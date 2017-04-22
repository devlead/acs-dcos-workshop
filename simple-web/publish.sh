
#shell script which pushes to marathon

curl -X PUT -d @marathon.json http://localhost:8989/marathon/v2/apps/simple-web --header "Content-Type:application/json"
