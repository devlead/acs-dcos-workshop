# Basic docker demo
A node.js hello world app running in a docker container.
The app responds with hostname, uptime in minutes and process id.
The process id helps distinguish between multiple instances.

1. Build the docker image by running the build script:

   $ sh build.sh

2. Confirm the image demo/demo-1 has been built:

   $ docker images

3. run the image in a container

   $ sh start.sh

4. Check the output from the node process the container

  $ docker logs simple-web

  It should show node listening on port 8080. See app.js

5. Test the web application

  $ curl http://localhost:8080/ (or use a browser)

6. Stop the container, delete the container and image
  $ sh stop.sh
  $ sh clean.sh
