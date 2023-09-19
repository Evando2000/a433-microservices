# Build docker image of the app with tag v1
docker build -t item-app:v1 .

# See list of all docker images inside the host
docker images

# Rename docker image to meet the requirements of GitHub Packages
docker tag item-app:v1 ghcr.io/evando2000/item-app:v1

# Load all environment variables needed from a file named ".env"
source .env

# Login to GitHub Packages
echo $CR_PAT | docker login ghcr.io -u Evando2000 --password-stdin

# Push docker image to GitHub Packages
docker push ghcr.io/evando2000/item-app:v1