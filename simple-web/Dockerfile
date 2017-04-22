FROM  node:slim
RUN   npm install -g nodemon
RUN   npm install express

# Work directory
RUN mkdir -p /src
WORKDIR /src
ADD app.js /src

# Expose HTTP server
EXPOSE 8080

# Run app
CMD ["nodemon", "/src/app.js"]
