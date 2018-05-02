;;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: cl-swagger -*-

;;(eval-when (:compile-toplevel :load-toplevel :execute)
;;  (ql:quickload "cl-mustache"))


(defpackage "CL-SWAGGER"
  (:use "CL" "DRAKMA" "CL-JSON" "CL-PPCRE" "MUSTACHE")
  (:export #:generate-client))
