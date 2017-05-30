(ql:quickload "drakma")

(ql:quickload "cl-json")




(defun post-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun put-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



(defun get-pet-find-by-status (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-pet-find-by-tags (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun post-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun delete-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



(defun post-pet-upload-image (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun get-store-inventory (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun post-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun get-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun delete-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



(defun post-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun post-user-create-with-array (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun post-user-create-with-list (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun get-user-login (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-user-logout (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun put-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



(defun delete-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



;;
;; (convert-json #'function path content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))