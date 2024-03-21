# simple-docker

## 1. Create the HTML, CSS, and Image Files

## 2. Create the Nginx Configuration File

- Set up the Nginx configuration in `nginx.conf` to define how our web server will serve the HTML, CSS, and image files.

## 3. Write the Dockerfile

- Define the steps to build our Docker image using the `Dockerfile`, specifying the base image, and copying our web content and Nginx configuration into the image.

## 4. Build the Docker Image

- **Command:** `docker build -t simple-html-docker .`
- **Description:** Build our Docker image with the tag `simple-html-docker` from the Dockerfile in our project directory.

## 5. Run the Docker Container Locally (Optional)

- **Command:** `docker run -p 80:80 simple-html-docker`
- **Description:** Run our Docker container locally to test, mapping port 80 on our host to port 80 in the container, and verify the Nginx server serves our web page correctly.

## 6. Authenticate with AWS ECR

- **Command:** `aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 160472638876.dkr.ecr.us-east-2.amazonaws.com`
- **Description:** Authenticate our Docker client with our AWS ECR registry to push and pull images.

## 7. Tag the Docker Image for ECR

- **Command:** `docker tag simple-html-docker:latest 160472638876.dkr.ecr.us-east-2.amazonaws.com/simple-html-docker:latest`
- **Description:** Tag our Docker image with the repository URI of our Amazon ECR repository to prepare for pushing.

## 8. Push the Image to ECR

- **Command:** `docker push 160472638876.dkr.ecr.us-east-2.amazonaws.com/simple-html-docker:latest`
- **Description:** Push our tagged Docker image to our AWS ECR repository so it can be pulled from AWS services or shared publicly.

## 9. docker-compose

- **Command:** `docker-compose up --build`
- **Description:** Define the service configuration using `docker-compose.yaml`, which specifies how the Docker container should be built and run, including port mapping and build context. Build the Docker image and run the container using Docker Compose. This command builds the image if it's not already present or if the build context has changed, then starts the container, mapping the specified ports.