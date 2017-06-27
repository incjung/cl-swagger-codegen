(in-package #:cl-swagger-codegen)

;;(ql:quickload "cl-mustache")
;;(ql:quickload "drakma")
;;(ql:quickload "cl-json")
;;(ql:quickload "cl-ppcre")

(defun fetch-json (url)
  (multiple-value-bind (body response-code)
      (drakma:http-request url :want-stream t)
    (setf (flex:flexi-stream-external-format body) :utf-8)
    (ecase response-code
      (200 (cl-json:decode-json body)))))

(defparameter *parameter-pattern* "{([A-Z\-]+)}")

(defun parse-path-parameters (path)
  "returns two values, first is non param path element, second are the params"
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
  (string-upcase (format nil "~{~A~^-~}" (parse-path-parameters name))))


(defun get-in (items alist)
  "Calls assoc on alist for each thing in items. Returns the cdr of that"
  (if (endp items) alist
      (get-in (rest items)
              (cdr (assoc (car items) alist)))))

(defun get-basepath (json)
  (get-in '(:base-path) json))

(defun get-schemes (json)
  (first (get-in '(:schemes) json)))

(defun make-urls (json)
  (concatenate 'string (get-schemes json) "://" (get-host json) (get-basepath json)))

(mustache:define wrapper-call-templete-simple
  "
;;
;; summary : {{summary}}
;; description : {{{description}}}
;; * path : {{paths}}
;;
(defun {{first-name}}-{{path-name}} (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept \"{{accept}}\" :content-type \"{{accept-type}}\" :content content :want-stream t :method {{method}})
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t \"failed - code : ~a\" code))))")



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


(defun generate-client (url filepath &optional accept accept-type)
  (with-open-file (*standard-output* filepath :direction :output :if-exists :supersede)
    (format t "(ql:quickload \"drakma\")~%(ql:quickload \"cl-json\")~%")
    (let ((json (fetch-json url)))
      (loop for paths in (get-in '(:paths) json)
            do (loop for path in (rest paths)
                     do (format t "~%~%~%")
                        (wrapper-call-templete-simple `((:baseurl . ,(lambda () (make-urls json)))
                                                        (:paths . ,(lambda () (string-downcase (car paths))))
                                                        (:path-name . ,(lambda () (string-downcase (normalize-path-name (first paths)))))
                                                        (:first-name . ,(lambda () (string-downcase (format nil "~A" (first path)))))
                                                        (:method . ,(lambda() (format nil ":~A" (first path))))
                                                        (:summary . ,(lambda() (format nil "~A" (get-in '(:summary) (cdr path)))))
                                                        (:description . ,(lambda() (format nil "~A" (get-in '(:description) (cdr path)))))
                                                        (:accept . ,(lambda () (if accept accept "application/json")))
                                                        (:accept-type . ,(lambda () (if accept-type accept-type "application/json"))))))))
    (format t "~%~%~%")
    (convert-json-templete)))


(defun generate-client-with-json (json filepath &optional accept accept-type)
  (with-open-file (*standard-output* filepath :direction :output :if-exists :supersede)
    (format t "(ql:quickload \"drakma\")~%(ql:quickload \"cl-json\")~%")
    (loop for paths in (get-in '(:paths) json)
          do (loop for path in (rest paths)
                   do (format t "~%~%~%")
                      (wrapper-call-templete-simple `((:baseurl . ,(lambda () (make-urls json)))
                                                      (:paths . ,(lambda () (car paths)))
                                                      (:path-name . ,(lambda () (string-downcase (normalize-path-name (first paths)))))
                                                      (:first-name . ,(lambda () (string-downcase (format nil "~A" (first path)))))
                                                      (:method . ,(lambda() (format nil ":~A" (first path))))
                                                      (:summary . ,(lambda() (format nil "~A" (get-in '(:summary) (cdr path)))))
                                                      (:description . ,(lambda() (format nil "~A" (cl-ppcre:regex-replace-all "\\n" (get-in '(:description) (cdr path)) "\\n"))))
                                                      (:accept . ,(lambda () (if accept accept "application/json")))
                                                      (:accept-type . ,(lambda () (if accept-type accept-type "application/json")))))))
  (format t "~%~%~%")
  (convert-json-templete)))


(defun generate-client (url filepath &optional accept accept-type)
  (if (typep url 'pathname) (generate-client-with-json (cl-json:decode-json-from-source url) filepath accept accept-type)
      (generate-client-with-json (fetch-json url) filepath accept accept-type)))

;;; (generate-client "http://petstore.swagger.io/v2/swagger.json" "test1.lisp")
;;; (generate-client #p"~/development/swagger/mapr-swagger-ui/mapr.json" "test2.lisp")


;;(print (run-program "ls" '("-l") :output *standard-output*))
;;(with-output-to-string (st) (run-program "curl" '("-ks" "-u" "mapr:mapr" "https://172.16.28.138:8443/rest/alarm/list") :output st))
