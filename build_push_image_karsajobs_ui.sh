# Build docker image of the app with tag latest
docker build -t evando2000/karsajobs-ui:latest .

# Rename docker image to meet the requirements of GitHub Packages
docker tag evando2000/karsajobs-ui:latest ghcr.io/evando2000/karsajobs-ui:latest

# Load all environment variables needed from a file named ".env"
source .env

# Login to GitHub Packages
echo $CR_PAT | docker login ghcr.io -u Evando2000 --password-stdin

# Push docker image to GitHub Packages
docker push ghcr.io/evando2000/karsajobs-ui:latest