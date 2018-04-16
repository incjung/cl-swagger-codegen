# cl-swagger-codegen #
## Introduction
This project is lisp swagger code-generator.

A swagger codegen is to build APIs quicker and improve consumption of your Swagger-defined APIs in every popular language with [Swagger CodeGen](http://swagger.io/swagger-codegen/)

With cl-swagger-codegen, you can generates client stub code of common lisp. 
 * For creating client stub code, [cl-mustache] (https://github.com/kanru/cl-mustache) which is template renderer is used. 
 * For HTTP communication, [drakma] (https://github.com/edicl/drakma) which is HTTP client in common lisp is used.
 * For JSON, [cl-json] (https://github.com/hankhero/cl-json) which is JSON encodrer/decoder is used.

## Install/Build
`cl-swagger-codegen` can be installed by quicklisp. 

- Download source code
```
https://github.com/incjung/cl-swagger-codegen.git
```

- Load/build in REPL session
```
 (asdf:load-system "cl-swagger")
```


## How to generate client Code with cl-swagger##


### Generating client lisp code from swagger url ###

Let's take a example. 

"http://petstore.swagger.io/" is a sample server Petstore server like "hello world" code. :)

With this page, you can generate a client stub code in current working directory, for example `pet-api-client.lisp`

```
(generate-client "http://petstore.swagger.io/v2/swagger.json" #p"./example/pet-api-client.lisp")
```

Open the `pet-api-client.lisp` and find a `rest-call` and `pets-pet` function:

```
(defun rest-call (....
  "call http-request with basic params and conteent and authorization"
  .....)


... 

(SKIP)

...


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
                            
(SKIP)

```

`rest-call` is core function for HTTP communication. This function will always be created by cl-swagger-gen. The rest funtions are wrapping the `rest-call` for convenience. 

A `post-pet` is a wrapper function to access `POST /PET/` 


### Generating client lisp code directly from swagger json file ###

Without running server providing a swagger JSON url, you can create a client code from swagger JSON FILE.
Assuming you have a swagger file, for example, `swagger.json`, you can generate a client code. 

```
(generate-client #p"./directory-path/swagger.json" "client2.lisp")
```

## How to use the client code that are created by cl-swagger##

### Example 1: Petstore

#### Create Client Code
```
(generate-client "http://petstore.swagger.io/v2/swagger.json" #p"./example/pet-api-client.lisp")
```

#### Useage 
Find the `pet-api-client.lisp` and load the file. 

To add new pet to the online store, use `POST-PET`. We are using `cl-json` (https://common-lisp.net/project/cl-json/) to edit json structure. 

```
(post-pet 
 :content (cl-json:encode-json-to-string '((id . 0)
                                           (:category . ((:id . 0) (:name . "string")))
                                           (:name . "doggie")
                                           ("photoUrls" . #("string"))
                                           (:tags . (((:id . 0)
                                                      (:name . "string"))))
                                           (:status . "available"))))

```

This is same with `curl` command:
```
curl -X POST "http://petstore.swagger.io/v2/pet" -H "accept: application/xml" -H "Content-Type: application/json" -d "{ \"id\": 0, \"category\": { \"id\": 0, \"name\": \"string\" }, \"name\": \"doggie\", \"photoUrls\": [ \"string\" ], \"tags\": [ { \"id\": 0, \"name\": \"string\" } ], \"status\": \"available\"}"
```

### Example 2: Google URLShortener Service
Please visit the api explorer (https://developers.google.com/apis-explorer/#p/urlshortener/v1/).

For swagger file, you can find open-api swagger at `https://github.com/APIs-guru/openapi-directory/tree/master/APIs/googleapis.com`. Inthe case that the swagger is not a json format, I just used `https://www.browserling.com/tools/yaml-to-json` to save the `swagger.json`.


#### Create Client Code
```
(generate-client #p"./example/urlshortener.json" #p"./example/urlshortener-api-client.lisp")

```

#### Useage 
Find the `urlshortener-api-client.lisp` and load the file. 

To expand a shortened URL, find `get-url`.

```
(get-url :params '(("key" . "XXXXX-YOUR-KEY-XXXXXXXXXXXX")
                   ("shortUrl" . "https://goo.gl/fbsS")))

```

This is same with `curl` command:
```
;;  curl -X GET "https://www.googleapis.com/urlshortener/v1/url?shortUrl=https%3A%2F%2Fgoo.gl%2FfbsS&key=XXXXXXX" -H "accept: application/json"
```

#### API KEY
To acquire and use your API key, visit "https://developers.google.com/url-shortener/v1/getting_started" and get API key


### Example 3: Google Calendar Service
Please visit the api explor (https://developers.google.com/apis-explorer/#p/calendar/v3/)

For swagger file, you can find open-api swagger at `https://github.com/APIs-guru/openapi-directory/tree/master/APIs/googleapis.com`. In the case that the swagger is not a json format, I just used `https://www.browserling.com/tools/yaml-to-json` to save the `swagger.json`.

#### Create Client Code
```
(generate-client #p"./example/cal-swagger.json" #p"./example/cal-api-client.lisp")
```

#### Useage 
Find the `cal-api-client.lisp` and load the file. 

To get my scheduler calendars, use `get-users-me-calendarlist` function. 
```
(get-users-me-calendarlist :params `(("access_token" . ,access-token)))
```

`access_token` came from Google Oauth2 process. You shoud have google account for Google services if you want to get your token. 

### Misc 
#### BASIC AUTHORIZATON
When the rest api require basic authorization, you can use. `:basic-authorization`

```
(<function-Name> :basic-authorization '("id" . "password"))
```

#### OAUTH2 AUTHORIZATON
For OAuth2, use *access-token* with *:params*

```
(<function-Name> :params '(("access-token" "-your-key-")))

```

ex)

```
(defparameter access-token "XXXXXXX YOUR-TOKEN-KEN XXXXXXXX")

(get-users-me-calendarlist :params `(("access_token" . ,access-token)))

```

For more information and exaple, please read my [wiki link] (https://github.com/incjung/cl-swagger-codegen/wiki/Google-Oauth2-Process)

#### JSON Structure
For json object, cl-swagger-codegen uses `cl-json`. 

```
(cl-json:encode-json-to-string '((id . 0)
                                (:category . ((:id . 0) (:name . "string")))
                                (:name . "doggie")
                                ("photoUrls" . #("string"))
                                (:tags . (((:id . 0)
                                (:name . "string"))))
                                (:status . "available")))
```

for json object:

```
{
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
```

