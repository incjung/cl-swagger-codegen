(ql:quickload "cl-mustache")

(ql:quickload "drakma")

(ql:quickload "cl-json")




(defun post-pet-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun put-pet-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



(defun get-pet-find-by-status-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-pet-find-by-tags-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-pet-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun post-pet-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun delete-pet-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



(defun post-pet-upload-image-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun get-store-inventory-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun post-store-order-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun get-store-order-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun delete-store-order-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



(defun post-user-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun post-user-create-with-array-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun post-user-create-with-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



(defun get-user-login-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-user-logout-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-user-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun put-user-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



(defun delete-user-call (path content)
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


(setf body (cl-json:encode-json-to-string '((id . 0)
                                            (:category . ((:id . 0) (:name . "string")))
                                            (:name . "doggie")
                                            ("photoUrls" . #("string"))
                                            (:tags . (((:id . 0)
                                                       (:name . "string"))))
                                            (:status . "available"))))

(convert-json #'post-pet-call "pet" body)
