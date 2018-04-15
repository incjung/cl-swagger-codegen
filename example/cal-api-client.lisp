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
;; Creates a secondary calendar.
;; * path-url : /calendars
;;
(defun post-calendars (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/calendars" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns metadata for a calendar.
;; * path-url : /calendars/{calendarId}
;;
(defun get-calendars (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Returns the rules in the access control list for the calendar.
;; * path-url : /calendars/{calendarId}/acl
;;
(defun get-calendars-acl (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Creates an access control rule.
;; * path-url : /calendars/{calendarId}/acl
;;
(defun post-calendars-acl (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Watch for changes to ACL resources.
;; * path-url : /calendars/{calendarId}/acl/watch
;;
(defun post-calendars-acl-watch (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Returns an access control rule.
;; * path-url : /calendars/{calendarId}/acl/{ruleId}
;;
(defun get-calendars-acl (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Clears a primary calendar. This operation deletes all events associated with the primary calendar of an account.
;; * path-url : /calendars/{calendarId}/clear
;;
(defun post-calendars-clear (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Returns events on the specified calendar.
;; * path-url : /calendars/{calendarId}/events
;;
(defun get-calendars-events (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Creates an event.
;; * path-url : /calendars/{calendarId}/events
;;
(defun post-calendars-events (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Imports an event. This operation is used to add a private copy of an existing event to a calendar.
;; * path-url : /calendars/{calendarId}/events/import
;;
(defun post-calendars-events-import (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Creates an event based on a simple text string.
;; * path-url : /calendars/{calendarId}/events/quickAdd
;;
(defun post-calendars-events-quickadd (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Watch for changes to Events resources.
;; * path-url : /calendars/{calendarId}/events/watch
;;
(defun post-calendars-events-watch (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Returns an event.
;; * path-url : /calendars/{calendarId}/events/{eventId}
;;
(defun get-calendars-events (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Returns instances of the specified recurring event.
;; * path-url : /calendars/{calendarId}/events/{eventId}/instances
;;
(defun get-calendars-events-instances (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Moves an event to another calendar, i.e. changes an event&#39;s organizer.
;; * path-url : /calendars/{calendarId}/events/{eventId}/move
;;
(defun post-calendars-events-move (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Stop watching resources through this channel
;; * path-url : /channels/stop
;;
(defun post-channels-stop (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/channels/stop" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns the color definitions for calendars and events.
;; * path-url : /colors
;;
(defun get-colors (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/colors" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns free/busy information for a set of calendars.
;; * path-url : /freeBusy
;;
(defun post-freebusy (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/freeBusy" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
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
;;
;; Adds an entry to the user&#39;s calendar list.
;; * path-url : /users/me/calendarList
;;
(defun post-users-me-calendarlist (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/users/me/calendarList" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Watch for changes to CalendarList resources.
;; * path-url : /users/me/calendarList/watch
;;
(defun post-users-me-calendarlist-watch (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/users/me/calendarList/watch" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns an entry on the user&#39;s calendar list.
;; * path-url : /users/me/calendarList/{calendarId}
;;
(defun get-users-me-calendarlist (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; Returns all user settings for the authenticated user.
;; * path-url : /users/me/settings
;;
(defun get-users-me-settings (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/users/me/settings" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Watch for changes to Settings resources.
;; * path-url : /users/me/settings/watch
;;
(defun post-users-me-settings-watch (&key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" "/users/me/settings/watch" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns a single user setting.
;; * path-url : /users/me/settings/{setting}
;;
(defun get-users-me-settings (path-url &key params content basic-authorization)
  (rest-call "https://www.googleapis.com/calendar/v3" path-url :params params :content content
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