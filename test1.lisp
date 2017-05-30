(ql:quickload "drakma")
(ql:quickload "cl-json")




;;
;; summary : Add a new pet to the store
;; description : 
;; * path : /PET
;;
(defun post-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; summary : Update an existing pet
;; description : 
;; * path : /PET
;;
(defun put-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



;;
;; summary : Finds Pets by status
;; description : Multiple status values can be provided with comma separated strings
;; * path : /PET/FIND-BY-STATUS
;;
(defun get-pet-find-by-status (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Finds Pets by tags
;; description : Muliple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
;; * path : /PET/FIND-BY-TAGS
;;
(defun get-pet-find-by-tags (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Find pet by ID
;; description : Returns a single pet
;; * path : /PET/{PET-ID}
;;
(defun get-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Updates a pet in the store with form data
;; description : 
;; * path : /PET/{PET-ID}
;;
(defun post-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; summary : Deletes a pet
;; description : 
;; * path : /PET/{PET-ID}
;;
(defun delete-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



;;
;; summary : uploads an image
;; description : 
;; * path : /PET/{PET-ID}/UPLOAD-IMAGE
;;
(defun post-pet-upload-image (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; summary : Returns pet inventories by status
;; description : Returns a map of status codes to quantities
;; * path : /STORE/INVENTORY
;;
(defun get-store-inventory (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Place an order for a pet
;; description : 
;; * path : /STORE/ORDER
;;
(defun post-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; summary : Find purchase order by ID
;; description : For valid response try integer IDs with value &gt;= 1 and &lt;= 10. Other values will generated exceptions
;; * path : /STORE/ORDER/{ORDER-ID}
;;
(defun get-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Delete purchase order by ID
;; description : For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
;; * path : /STORE/ORDER/{ORDER-ID}
;;
(defun delete-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



;;
;; summary : Create user
;; description : This can only be done by the logged in user.
;; * path : /USER
;;
(defun post-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; summary : Creates list of users with given input array
;; description : 
;; * path : /USER/CREATE-WITH-ARRAY
;;
(defun post-user-create-with-array (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; summary : Creates list of users with given input array
;; description : 
;; * path : /USER/CREATE-WITH-LIST
;;
(defun post-user-create-with-list (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; summary : Logs user into the system
;; description : 
;; * path : /USER/LOGIN
;;
(defun get-user-login (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Logs out current logged in user session
;; description : 
;; * path : /USER/LOGOUT
;;
(defun get-user-logout (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Get user by user name
;; description : 
;; * path : /USER/{USERNAME}
;;
(defun get-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; summary : Updated user
;; description : This can only be done by the logged in user.
;; * path : /USER/{USERNAME}
;;
(defun put-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



;;
;; summary : Delete user
;; description : This can only be done by the logged in user.
;; * path : /USER/{USERNAME}
;;
(defun delete-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



;;
;; (convert-json #'function "/path" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))