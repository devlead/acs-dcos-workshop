## build an image, tag it and push to docker hub

# You need to be logged on with your docker hub credentials to perform the last step
# so just run docker login at the command line before running this script
set IMAGE=<your-hub>/simple-web
set TAG=1.0

# build an image based on the dockerfile in the current directory
docker build -t $IMAGE .

# add a tag to the image
docker tag $IMAGE $IMAGE:$TAG

# push the image to docker hub
docker push $IMAGE:$TAG
