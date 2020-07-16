# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## How to run Swagger

* Run Swagger-UI container

    ```
    docker pull swaggerapi/swagger-ui
    docker run -p 80:8080 swaggerapi/swagger-ui
    ```

* Input api-docs path into Swagger-UI
    ```
    http://localhost:3000/api-docs.json
    ```