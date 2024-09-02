cd hello
docker build -t hello .
cd ..

cd world
docker build -t world .
cd ..

cd helloworld
docker build -t helloworld .
cd ..

# assumes that minikube has been added to PATH
# if not
# windows
# PATH=C:\Program Files\Kubernetes\Minikube;%path%
minikube start

# windows - please dont use windows
# @FOR /f "tokens=*" %i IN ('minikube -p minikube docker-env --shell cmd') DO @%i
eval $(minikube -p minikube docker-env)



minikube image load hello:latest

minikube image load world:latest

minikube image load helloworld:latest


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

minikube service helloworld-service
