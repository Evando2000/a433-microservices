docker build -t item-app:v1 .

docker images

docker tag item-app ghcr.io/Evando2000/item-app:v1

echo $CR_PAT | docker login ghcr.io -u Evando2000 --password-stdin

docker push ghcr.io/Evando2000/item-app:v1