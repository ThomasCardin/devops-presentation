# syntax=docker/dockerfile:1
# Step 1. Add from (get a os or add "scratch" if we start with no image)
FROM golang:1.16-alpine

# Step 2. Add maintainer of the project
LABEL maintainer="tcardin"

# Setp 3. Set working directory of the image
WORKDIR /app

# Step 4. Set up working directory + install dependencies
COPY go.mod ./
COPY go.sum ./
RUN go mod download

# Step 5. Add other files and build the main
COPY *.go ./
RUN go build -o /helloworld

# Step --. Set env variable
ENV K8S_HELLO_WORLD=$K8S_HELLO_WORLD
ENV DOCKER_HELLO_WORLD="hello from docker"

# Step 6. Expose port to the docker network
EXPOSE $PORT

# Step 7. Run the project
CMD ["/helloworld"]