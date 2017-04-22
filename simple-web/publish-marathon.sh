#shell script which pushes to marathon
# assumes you have set up an SSH tunnel to the master LB on local port 8989

curl -X PUT -d @marathon.json http://localhost:8989/marathon/v2/apps/simple-web --header "Content-Type:application/json"
