(in-package "CL-SWAGGER")

;;; drakma:*header-stream* for DEBUG
(setf drakma:*header-stream* *standard-output*)

;;; set cl-json:*json-identifier-name-to-lisp* AS identical name
;;; ex ==> (setf cl-json:*json-identifier-name-to-lisp* (lambda (x) (string-upcase x)))
(setf cl-json:*json-identifier-name-to-lisp* (lambda (x) x))


(defun fetch-json (this-url)
  "gets JSON with this URL only when response-code is 200"
  (multiple-value-bind (body response-code)
      (http-request this-url :want-stream t)
    (setf (flex:flexi-stream-external-format body) :utf-8)
    (ecase response-code
      (200 (cl-json:decode-json body)))))

;;; RE Pattern 
(defparameter *parameter-pattern* "{([a-zA-Z\-]+)}")

(defun parse-path-parameters (path)
  "returns two values, 1st is non param path element, 2nd are the params.
   ex) /PARAM1/{PARAM2} ==> ((\"PARAM1\") (\"PARAM2\"))"
  (values-list (mapcar #'nreverse
                       (reduce
                        (lambda (acc v)
                          (if (string= "" v)
                              acc
                              (let ((param (cl-ppcre:register-groups-bind (param)
                                               (*parameter-pattern* v) param)))
                                (if param
                                    (list (first acc) (push param (second acc)))
                                    (list (push v (first acc)) (second acc))))))
                        (cl-ppcre:split "/" (string path))
                        :initial-value (list nil nil)))))

(defun normalize-path-name (name)
  "string --> A-B-C"
  (string-upcase (format nil "~{~A~^-~}" (parse-path-parameters name))))

(defun normalize-path-url (path-url)
  "string --> A/B/C"
  (string-upcase (format nil "~{~A~^/~}" (parse-path-parameters path-url))))

(defun get-in (this-items alist)
  "get lists related to this-items"
  (if (endp this-items) alist
      (get-in (rest this-items)
              (cdr (assoc (car this-items) alist)))))

(defun get-basepath (json)
  "gets base-path"
  (get-in '(:|basePath|) json))

(defun get-schemes (json)
  "gets schemes"
  (first (get-in '(:|schemes|) json)))

(defun get-host (json)
  "gets hostname"
  (get-in '(:|host|) json))

(defun make-urls (json)
  "scheme + hostname + basepath"
  (concatenate 'string (get-schemes json) "://" (get-host json) (get-basepath json)))

(mustache:define wrapper-call-templete-v2
"
;;
;; summary : {{summary}}
;; description : {{{description}}}
;; * path : {{paths}}
;;
(defun {{first-name}}-{{path-name}} (&key param content basic-authorization)
  (multiple-value-bind (stream code header)
      (drakma:http-request (concatenate 'string \"{{baseurl}}/{{path-url}}?\" param) :basic-authorization basic-authorization :accept \"{{accept}}\" :content-type \"{{accept-type}}\" :content content :want-stream t :method {{method}})
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t \"failed - code : ~a\" code))))")


(mustache:define rest-call-function
  "
(defun rest-call (host url-path
                  &key params content basic-authorization
                    (method :get)
                    (accept \"application/json\")
                    (content-type \"application/json\"))
  \"call http-request with basic params and conteent and authorization\"
  (multiple-value-bind (stream code)
      (drakma:http-request (format nil \"~a~a\" host url-path) :parameters params :content content :basic-authorization basic-authorization :accept accept :content-type content-type :want-stream t :method method)
    (if (equal code 200)
        (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
               (cl-json:decode-json stream))
        (format t \"HTTP CODE : ~A ~%\" code))))")


(mustache:define rest-call-templete-v1
  "
;;
;; {{description}}
;; * path-url : {{paths}}
;;
(defun {{first-name}}-{{path-name}} (&key params content basic-authorization)
  (rest-call \"{{baseurl}}\" \"{{path-url}}\" :params params :content content
                            :basic-authorization basic-authorization
                            :method {{method}}
                            :accept \"{{accept}}\"
                            :content-type \"{{accept-type}}\"))")

(mustache:define rest-call-templete-v2
  "
;;
;; {{description}}
;; * path-url : {{paths}}
;;
(defun {{first-name}}-{{path-name}} (path-url &key params content basic-authorization)
  (rest-call \"{{baseurl}}\" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method {{method}}
                                              :accept \"{{accept}}\"
                                              :content-type \"{{accept-type}}\"))")


(mustache:define convert-json-templete
  "
;;
;; (convert-json #'function \"/path\" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t \"failed - code : ~a\" code))))")


(defun rest-call (host url-path
                  &key params content basic-authorization
                    (method :get)
                    (accept "application/json")
                    (content-type "application/json"))
  "call http-request with basic params and conteent and authorization"
  (multiple-value-bind (stream code)
      (drakma:http-request (format nil "~a~a" host url-path) :parameters params :content content :basic-authorization basic-authorization :accept accept :content-type content-type :want-stream t :method method)
    (if (equal code 200)
        (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
               (cl-json:decode-json stream))
        (format t "HTTP CODE : ~A ~%" code))))


(defmacro make-defs (host cmd-path method n)
  "macro for creating http request functions"
  (let ((function-name (intern (string-upcase (subseq (substitute #\- #\/ cmd-path) 1)))))
    (if (= 1 n)
        `(defun ,function-name (url-path
                                &key params content basic-authorization
                                  (method ,method)
                                  (accept "application/json")
                                  (content-type "application/json"))
           (rest-call ,host url-path :params params :content content
                                     :basic-authorization basic-authorization
                                     :method method
                                     :accept accept
                                     :content-type content-type))
        `(defun ,function-name (&key params content basic-authorization
                                  (method ,method)
                                  (accept "application/json")
                                  (content-type "application/json"))
           (rest-call ,host ,cmd-path :params params :content content
                                     :basic-authorization basic-authorization
                                     :method method
                                     :accept accept
                                     :content-type content-type)))))

(macroexpand-1 '(make-defs "https://www.googleapis.com/calendar" "/v3/users/me/calendarList" :get  0))



(defun generate-client-with-json (json filepath &optional accept accept-type)
  "generater a lisp code with swagger-json"
  (with-open-file (*standard-output* filepath :direction :output :if-exists :supersede)
    (format t "(ql:quickload \"drakma\")~%(ql:quickload \"cl-json\")~%")
    (rest-call-function)
    (loop for paths in (get-in '(:|paths|) json)
          do (loop for path in (rest paths)
                   do ;;(format t "~%~A==>~A~%" (first paths) (first path))
                      (when (or (equal (first path) :|get|) (equal (first path) :|post|))
                        (multiple-value-bind (fnames options)
                            (parse-path-parameters (first paths))
                          ;;(format t " ~A ==> ~A ~%" fnames options)
                          (let ((tmp  `((:baseurl . ,(lambda () (make-urls json)))
                                        (:paths . ,(lambda () (car paths)))
                                        (:path-name . ,(lambda () (string-downcase (normalize-path-name (first paths)))))
                                        (:path-url . ,(first paths))
                                        (:first-name . ,(lambda () (string-downcase (format nil "~A" (first path)))))
                                        (:method . ,(lambda() (format nil ":~A" (first path))))
                                        (:description . ,(lambda() (format nil "~A" (cl-ppcre:regex-replace-all "\\n" (get-in '(:|description|) (cdr path)) "\\n"))))
                                        (:accept . ,"application/json")
                                        (:accept-type . "application/json"))))
                            (if options
                                (rest-call-templete-v2 tmp)
                                (rest-call-templete-v1 tmp)))))))
    (convert-json-templete)))




(defun generate-client-with-json-1 (json filepath &optional accept accept-type)
  "generater a lisp code with swagger-json"
  (with-open-file (*standard-output* filepath :direction :output :if-exists :supersede)
    (format t "(ql:quickload \"drakma\")~%(ql:quickload \"cl-json\")~%")
    (loop for paths in (get-in '(:paths) json)
          do (loop for path in (rest paths)
                   do (format t "~%~%~%")
                      (wrapper-call-templete-v2 `((:baseurl . ,(lambda () (make-urls json)))
                                                  (:paths . ,(lambda () (car paths)))
                                                  (:path-name . ,(lambda () (string-downcase (normalize-path-name (first paths)))))
                                                  (:path-url . ,(lambda () (string-downcase (normalize-path-url (first paths)))))
                                                  (:first-name . ,(lambda () (string-downcase (format nil "~A" (first path)))))
                                                  (:method . ,(lambda() (format nil ":~A" (first path))))
                                                  (:summary . ,(lambda() (format nil "~A" (get-in '(:summary) (cdr path)))))
                                                  (:description . ,(lambda() (format nil "~A" (cl-ppcre:regex-replace-all "\\n" (get-in '(:description) (cdr path)) "\\n"))))
                                                  (:accept . ,(lambda () (if accept accept "application/json")))
                                                  (:accept-type . ,(lambda () (if accept-type accept-type "application/json")))))))
    (format t "~%~%~%")
    (convert-json-templete)))


(defun generate-client (url filepath &optional accept accept-type)
  "exposing function for client code generater"
  (if (typep url 'pathname) (generate-client-with-json (cl-json:decode-json-from-source url) filepath accept accept-type)
      (generate-client-with-json (fetch-json url) filepath accept accept-type)))

;;(with-output-to-string (st) (run-program "curl" '("-ks" "-u" "mapr:mapr" "https://172.16.28.138:8443/rest/alarm/list") :output st))
