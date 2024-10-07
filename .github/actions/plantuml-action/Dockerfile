# Use Amazon Corretto as the base image
FROM amazoncorretto:21
FROM --platform=linux/amd64 amd64/amazoncorretto:17



# Install necessary dependencies
RUN yum update -y && \
    yum install -y graphviz curl && \
    yum clean all


# Set the working directory
WORKDIR /app

# Download the PlantUML JAR file
RUN curl -L -o plantuml.jar https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar


# Set up /github/workspace for the action
WORKDIR /github/workspace

# Copy the entrypoint script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh


# Set the entrypoint to the script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

