# CMPE 272 Hello World Microservices Application
This application contains three microservices using Python and Flask. Two of the microservices returns a simple message: "Hello" and "World". The third microservices takes these two output and combines them together to output "Hello World". Each service is containerized using Docker and deployed onto a Kubernetes cluster using Minikube.

## Requirements
This application uses the following (at the minimum):
- Python 3.9
- Requests 2.31.0
- Flask 2.0.2
- Werkzeug 2.0.2
- Docker
- Minikube

## To run the application:
1. Ensure that the above required tools are downloaded and setup.
2. Clone the Github repository and `cd` into the repository.
3. Run the `setup.sh` script. (**NOTE**: This is a bash script)
4. The helloworld application should automatically open in a browser when the script is finished. If not, the terminal should display what IP address the application is running at.

### Other Notes:
- The above steps should be ran on a **CLEAN** build. (i.e. no previous instances of the application's docker containers, images, minikube clusters)
- The IP addresses used in helloworld.py are hardcoded, assuming that those are given when the hello and world microservices were deployed separately.
- Link to DockerHub repo containing the images: https://hub.docker.com/r/denisegip/cmpe272
