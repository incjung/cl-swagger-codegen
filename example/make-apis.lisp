(ql:quickload "oauth2")

(defpackage swagger.test
  (:use cl oauth2 cl-swagger))

(in-package swagger.test)


;;; TEST 1) PETSTORE

(generate-client "http://petstore.swagger.io/v2/swagger.json" #p"./example/pet-api-client.lisp")


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

(defun post-pet (&key params content basic-authorization)
  (rest-call "http://petstore.swagger.io/v2" "/pet" :params params :content content
                                                    :basic-authorization basic-authorization
                                                    :method :post
                                                    :accept "application/json"
                                                    :content-type "application/json"))

(post-pet 
 :content (cl-json:encode-json-to-string '((id . 0)
                                           (:category . ((:id . 0) (:name . "string")))
                                           (:name . "doggie")
                                           ("photoUrls" . #("string"))
                                           (:tags . (((:id . 0)
                                                      (:name . "string"))))
                                           (:status . "available"))))


;; ==> curl -X POST "http://petstore.swagger.io/v2/pet" -H "accept: application/xml" -H "Content-Type: application/json" -d "{ \"id\": 0, \"category\": { \"id\": 0, \"name\": \"string\" }, \"name\": \"doggie\", \"photoUrls\": [ \"string\" ], \"tags\": [ { \"id\": 0, \"name\": \"string\" } ], \"status\": \"available\"}"

;;==>  ((:|id| . -9223372036854775808) (:|category| (:|id| . 0) (:|name| . "string")) (:|name| . "doggie") (:|photoUrls| "string") (:|tags| ((:|id| . 0) (:|name| . "string"))) (:|status| . "available"))


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

(get-pet "/pet/0")

;;; TEST 2) Shortener URL

(generate-client #p"./example/urlshortener.json" #p"./example/urlshortener-api-client.lisp")


(defparameter *google-key* "----------YOURS--------------")


(defun get-url (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/urlshortener/v1" "/url" :params params :content content
                                                                 :basic-authorization basic-authorization
                                                                 :method :get
                                                                 :accept "application/json"
                                                                 :content-type "application/json"))

(get-url :params '(("key" . "--------YOURS------")
                   ("shortUrl" . "https://goo.gl/fbsS")))



;;  curl -X GET "https://www.googleapis.com/urlshortener/v1/url?shortUrl=https%3A%2F%2Fgoo.gl%2FfbsS" -H "accept: application/json"


;;; TEST 3) Google Calendar

(generate-client #p"./example/cal-swagger.json" #p"./example/cal-api-client.lisp")


(defparameter *client-id* "-----YOURS-----")

(defparameter *client-secret* "-----YOURS-----")
(defparameter *redirect-uri* "urn:ietf:wg:oauth:2.0:oob")

(defparameter *other* '(nil))

(defparameter *other* '(("access_type" . "offline")))

(defparameter *redirect*
  (request-code
   "https://accounts.google.com/o/oauth2/auth"
   *client-id*
   :scope "https://www.googleapis.com/auth/calendar https://www.googleapis.com/auth/calendar.readonly"
   :redirect-uri *redirect-uri*
   :other *other*))

;; (defparameter *redirect*
;;   (request-code
;;    "https://accounts.google.com/o/oauth2/auth"
;;    *client-id*
;;    :scope "https://www.googleapis.com/auth/cloud-platform"
;;    :redirect-uri *redirect-uri*))

(format t "~%~%Go to ~A and come back with the code: " *redirect*)


;;(defparameter *code* (read-line))
(defparameter *code* "4/AABpGWA8iVjaLIhQrS4lrBTH_ugyaXos7Tv-qyEC3YUcWzjLYrlMCk8")

(ql:quickload "oauth2")

(defparameter *token*
  (request-token
   "https://accounts.google.com/o/oauth2/token"
   *code* 
   :redirect-uri *redirect-uri*
   :method :post
   :other `(("client_id" . ,*client-id*)
            ("client_secret" . ,*client-secret*))))

(format t "I got a token:~%~A~%" *token*)

(defparameter access-token (token-string *token*))
(defparameter access-token "ya29.GlueBVO2gTnJ3EY-m0roOz0YEuuKeOYKpqvgKXKVF-cZRtkaOaB4vrCRfKB8KhNv8INLHDlgDuBtyM_D96Rpc96mlAVrZ6A8DCbFGFL6VE5-TC38AwB-Mkgdwdj7")
(defparameter refresh-token (token-refresh-token *token*))


(defparameter *refreshed-token*
  (refresh-token 
   "https://www.googleapis.com/oauth2/v4/token"
   *token*
   :method :post
   :other `(("client_id" . ,*client-id*)
            ("client_secret" . ,*client-secret*)))
  )

(format t " I get a refreshed token : ~A~%" *refreshed-token*)

;;
;; Returns entries on the user&#39;s calendar list.
;; * path-url : /users/me/calendarList
;;
(defun get-users-me-calendarlist (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/users/me/calendarList" :params params :content content
                                                                               :basic-authorization basic-authorization
                                                                               :method :get
                                                                               :accept "application/json"
                                                                               :content-type "application/json"))


(get-users-me-calendarlist :params `(("access_token" . ,access-token)))

