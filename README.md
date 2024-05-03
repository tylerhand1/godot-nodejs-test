# Godot Node.js Integration Test
This is a test project to see how to use a Godot HTTPRequest with an Express server on the Node.js runtime environment.

## Project Structure
The project is composed of two main directories: server and client.
### Server
The server contains an index.js file that uses the Express json parser middleware to allow easy parsing and sending of JSON content.
### Client
The client contains the Godot project that has an HTTPRequest GDScript file. In this script, it creates an HTTP request object, requests on the server, and if there is no error, parse the json response and print the response.
## How to install and run server
 ```
$ cd server && npm install && npm start
 ```
