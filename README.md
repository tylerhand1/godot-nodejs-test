# Godot Node.js Integration Test
This is a test project to see how to use a Godot HTTPRequest with an Express server on the Node.js runtime environment.
## The project is live with a deployed backend
The site is built with GitHub Pages and can be accessed [here](https://tylerhand1.github.io/godot-nodejs-test/).
The backend was built and deployed with Render.
## Project Structure
The project is composed of two main directories: server and client.
### Server
The server contains an index.js file that uses the Express json parser middleware to allow easy parsing and sending of JSON content.
### Client
The client contains the Godot project that has an HTTPRequest GDScript file. In this script, it creates an HTTP request object, requests on the server, and if there is no error, parse the json response and print the response.
## How to install server and run locally
 ```
$ cd server && npm install && npm start
 ```
In client/src/scripts/TestHTTPRequest.gd, changes request url from "https://godot-nodejs-test.onrender.com/" to "http://localhost:8080"
