(ql:quickload "cl-mustache")
(ql:quickload "drakma")
(ql:quickload "cl-json")

(defparameter json (cl-json:decode-json-from-source #p"/Users/incjjung/development/swagger/mapr-swagger-ui/mapr.json"))
(defparameter json (fetch-json "http://petstore.swagger.io/v2/swagger.json"))


(defun fetch-json (url)
  (multiple-value-bind (body response-code)
      (drakma:http-request url :want-stream t)
    (setf (flex:flexi-stream-external-format body) :utf-8)
    (ecase response-code
      (200 (cl-json:decode-json body)))))

(defparameter *parameter-pattern* "{([A-Z\-]+)}")

(defun path-parameters (path)
  (let (result)
    (cl-ppcre:do-register-groups (param) (*parameter-pattern* path)
      (push param result))
    (nreverse result)))

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

(defun get-host (json)
  (get-in '(:host) json))

(defun get-basepath (json)
  (get-in '(:base-path) json))

(defun get-schemes (json)
  (first (get-in '(:schemes) json)))

(defun make-urls (json)
  (concatenate 'string (get-schemes json) "://" (get-host json) (get-basepath json)))

(mustache:define wrapper-call-templete-simple
  "
(defun {{first-name}}-{{path-name}}-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil \"~A/~A\" \"{{baseurl}}\" path) :accept \"{{accept}}\" :content-type \"{{accept-type}}\" :content content :want-stream t :method {{method}})
        (values code stream header)))")



(mustache:define convert-json-templete
  "
;;
;; (convert-json #'function path content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t \"failed - code : ~a\" code))))")



(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))

;;(post-pet-call "apet" body)

;;(convert-json #'post-pet-call "pet" body)

;;(setf sss (convert-json #'post-pet-call "pet1" body))


(defun generate-client (url filepath)
  (with-open-file (*standard-output* filepath :direction :output :if-exists :supersede)
    (format t "(ql:quickload \"cl-mustache\")~%
(ql:quickload \"drakma\")~%
(ql:quickload \"cl-json\")~%")
    (let ((json (fetch-json url)))
      (loop for paths in (get-in '(:paths) json)
            do (loop for path in (rest paths)
                     do (format t "~%~%~%")
                        (wrapper-call-templete-simple `((:baseurl . ,(lambda () (make-urls json)))
                                                        (:path-name . ,(lambda () (string-downcase (normalize-path-name (first paths)))))
                                                        (:first-name . ,(lambda () (string-downcase (format nil "~A" (first path)))))
                                                        (:method . ,(lambda() (format nil ":~A" (first path))))
                                                        (:accept . "application/json")
                                                        (:accept-type . "application/json"))))))
    (format t "~%~%~%")
    (convert-json-templete)))


(generate-client "http://petstore.swagger.io/v2/swagger.json" "teest.lisp")
