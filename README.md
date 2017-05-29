# cl-swagger-codegen #
lisp code-generator for swagger

# Test #
For example, 

`(generate-client "http://petstore.swagger.io/v2/swagger.json" "test1.lisp")`



test data

```
(setf body (cl-json:encode-json-to-string '((id . 0)
                                            (:category . ((:id . 0) (:name . "string")))
                                            (:name . "doggie")
                                            ("photoUrls" . #("string"))
                                            (:tags . (((:id . 0)
                                                       (:name . "string"))))
                                            (:status . "available"))))

(convert-json #'post-pet-call "pet" body)

```

