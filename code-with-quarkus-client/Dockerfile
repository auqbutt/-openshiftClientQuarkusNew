# Pull base ubuntu image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java JRE
apt-get install default-jre -y
# Copy the build files to the container.
ADD ./code-with-quarkus-client/target/quarkusclient.jar quarkusclient.jar
# Document that the service listens on port 50051.
EXPOSE 50053
# Run the server command when the container starts.
CMD java -jar quarkusclient.jar