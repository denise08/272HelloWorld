# Build docker images
cd hello
docker build -t hello .
cd ..

cd world
docker build -t world .
cd ..

cd helloworld
docker build -t helloworld .
cd ..

# Assumes that minikube has been added to PATH
minikube start

eval $(minikube -p minikube docker-env)

# Load images on minikube
minikube image load hello:latest

minikube image load world:latest

minikube image load helloworld:latest

# Configure minikube services
cd hello
kubectl apply -f hello.yaml
kubectl apply -f hello-service.yaml
cd ..

cd world
kubectl apply -f world.yaml
kubectl apply -f world-service.yaml
cd ..

cd helloworld
kubectl apply -f helloworld.yaml
kubectl apply -f helloworld-service.yaml
cd ..

sleep 30

# Start helloworld application
minikube service helloworld-service
