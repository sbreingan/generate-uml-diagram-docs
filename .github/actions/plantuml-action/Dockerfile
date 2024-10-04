# Use Amazon Corretto as the base image
FROM amazoncorretto:17

# Set the working directory
WORKDIR /app

# Install necessary dependencies
RUN yum update -y && \
    yum install -y graphviz curl && \
    yum clean all

# Download the PlantUML JAR file
RUN curl -L -o plantuml.jar https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar

# Copy the entrypoint script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

