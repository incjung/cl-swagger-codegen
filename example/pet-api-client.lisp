(ql:quickload "drakma")
(ql:quickload "cl-json")

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
;;
;; 
;; * path-url : /pet
;;
(defun post-pet (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/pet" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Multiple status values can be provided with comma separated strings
;; * path-url : /pet/findByStatus
;;
(defun get-pet-findbystatus (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/pet/findByStatus" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Muliple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
;; * path-url : /pet/findByTags
;;
(defun get-pet-findbytags (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/pet/findByTags" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns a single pet
;; * path-url : /pet/{petId}
;;
(defun get-pet (path-url &key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; 
;; * path-url : /pet/{petId}
;;
(defun post-pet (path-url &key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; 
;; * path-url : /pet/{petId}/uploadImage
;;
(defun post-pet-uploadimage (path-url &key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Returns a map of status codes to quantities
;; * path-url : /store/inventory
;;
(defun get-store-inventory (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/store/inventory" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; 
;; * path-url : /store/order
;;
(defun post-store-order (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/store/order" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; For valid response try integer IDs with value &gt;= 1 and &lt;= 10. Other values will generated exceptions
;; * path-url : /store/order/{orderId}
;;
(defun get-store-order (path-url &key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; This can only be done by the logged in user.
;; * path-url : /user
;;
(defun post-user (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/user" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; 
;; * path-url : /user/createWithArray
;;
(defun post-user-createwitharray (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/user/createWithArray" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; 
;; * path-url : /user/createWithList
;;
(defun post-user-createwithlist (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/user/createWithList" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; 
;; * path-url : /user/login
;;
(defun get-user-login (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/user/login" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; 
;; * path-url : /user/logout
;;
(defun get-user-logout (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/user/logout" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; 
;; * path-url : /user/{username}
;;
(defun get-user (path-url &key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; (convert-json #'function "/path" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))