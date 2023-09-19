docker build -t item-app:v1 .

docker images

docker tag item-app:v1 ghcr.io/evando2000/item-app:v1

source .env
echo $CR_PAT | docker login ghcr.io -u Evando2000 --password-stdin

docker push ghcr.io/evando2000/item-app:v1