;;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-lisp; Package: CL-USER -*-

(asdf:defsystem "cl-swagger"
  :description "code generatter for swagger"
  :author "Inchul <ijung@mapr.com>"
  :license "BSD"
  :serial t
  :depends-on ("drakma" "cl-json" "cl-ppcre")
  :components ((:file "package")
               (:file "code-gen")))
