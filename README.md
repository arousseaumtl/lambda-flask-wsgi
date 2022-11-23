## WHAT IS THIS?

This project will scaffold a basic Flask application and provide a streamlined way to package it as a container for use as an AWS 
Lambda function. The Lambda can be interacted with over HTTP protocol through  API Gateway, or Lambda function url. This 
project can also be used to take existing Flask applications and adapt them for use as an AWS Lambda function.

## WHY USE THIS?

Use this to quickly get started building a Lambda application using the Flask framework, and package it as a container.

## WHY NOT USE THIS?

If you are building a Lambda function that will not communicate over http, then this will not help.

## USAGE

    Requirements:
        - Linux, Unix, or MacOS
        - Docker
        - Git

1. Clone this repo:

   `git clone https://github.com/arousseaumtl/lambda-flask-wsgi`

2. Change directory, and build initial container:

   `cd lambda-flask-wsgi`

   `./run.sh --build`

3. Run the container:

   `./run.sh --run`

4. Once container is built and running, open the follwing url in a browser:

   `localhost:5000/test`

6. Edit the src/app.py file to build your application. The src/main.py file is meant to bootstrap the application and should be 
   left as is.

7. To build a container with your app that is current, stop the current running container, then run the following command:

   `./run.sh --build`




Notes:

    - Add environment variables locally in the `vars.env` file
