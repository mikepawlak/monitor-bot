#this should actually not be neccessary very shortly

docker buildx create --name xbuilder
docker buildx use xbuilder


docker buildx build --build-arg VERSION=v1.9.5 --platform linux/arm/v7,linux/amd64 --progress plain --push -t mpawlak719/kube-state-metrics:v1.9.5 .