;;;; cl-swagger-codegen.asd

(asdf:defsystem #:cl-swagger-codegen
  :description "Describe cl-swagger-codegen here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on (#:drakma
               #:cl-json
               #:cl-ppcre)
  :serial t
  :components ((:file "package")
               (:file "code-gen")))



