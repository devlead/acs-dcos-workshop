# ASP.NET Core Demo

This project was generated with yeoman and edited with vscode on a windows 10 machine. 

For each call to / it will return a JSON object with the counter value and a string that is unique for the process. See Controllers/CountController.cs

Also see Dockerfile

## Workshop steps

1. Build the docker image

  `docker build -t web-api-counter .`

2. List images on your machine:

  `docker images` 

  Notice that there are multiple images.

3. Run it!

  `docker run -d -P web-api-counter`

4. View running containers:

  `docker ps`

Notice the random host port and "CONTAINER ID", you will need these in the coming steps.

5. Test the service

  `curl http://localhost:<PORT>`

6. View running containers

  `docker ps`

7. Terminate and remove the container

  `docker rm -f <CONTAINER>`


8. (Optional) Push image to docker registry
 
 * Create a docker hub account
 * Create a repo named web-api-counter
 * Login on your machine using `docker login`
 * Tag the image using `docker tag`
 * Push the image using `docker push`

8. Remove the local image:

  `docker rmi web-api-counter`




