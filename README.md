# DC/OS Microservices workshop


Clone this repository or download and extract on your workstation.
You need docker, ssh, an azure account with sufficient credits.

# LAB 1 - Deploy DCOS

1. Generate SSH key pair by running `ssh-keygen`
   Alternatively, use the keys in the keys folder - UNSECURE!!!

2. Create a DC/OS cluster in Azure by adding a resource of type Azure Container Service
   
	 * Choose DCOS for orchestration
	 * Choose 1 master (3 or 5 is for HA in production)
	 * Select 1 public agent and 2 private agents
	 * Use the public key created from step 1
	 * Use 'dcos' for the user name
	 * Use a short name for the resource group :)

While we are waiting for the cluster to deploy we will have a look at docker.

# LAB 2 - Docker

1. Create a docker image with a NodeJS web applicaiton
   Follow the instructions in simple-web/README.md
2. Create a docker image with an ASP.NET Core API app
   Follow the instructions in web-api/README.md


# LAB 3 - Exploring the DC/OS UI
1. Create an SSH tunnel from port 8989 on your machine to the masters LB
2. Goto https://localhost:8989 to see the DC/OS UI
3. Using the UI, deploy the simple-web docker image from daslob/simple-web.
   Deploy to the public node (In the Resource role text box, type slave_public)
	 and map container port 8080 to port 80 on the host.
4. You should be able to access the web application through the public load balancer
   on port 80


Discussion: How can you scale the web application?

# LAB 5 - Service discovery and load balancing
1. Deploy the web-api service to your DC/OS cluster:
   Use the daslob/web-api container image, hostPort = 5000 and containerPort = 5000
2. Scale the service to 2 instances.
3. Create a service named web-api-test with the command:

	`curl http://web-api.marathon.mesos:5000`

3. Deploy the web application (see web-folder) and set the environment variable API = web-api.marathon.mesos:5000