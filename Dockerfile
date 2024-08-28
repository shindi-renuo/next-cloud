# Use the official Nextcloud All-In-One image as a base
FROM nextcloud/all-in-one:latest

# Optionally, if you want to add custom scripts, configurations, or dependencies, do so here
# Example:
# RUN apt-get update && apt-get install -y some-package

# Define the volumes to be used by this container
VOLUME /mnt/docker-aio-config
VOLUME /var/run/docker.sock

# Expose the ports that the container will listen on
EXPOSE 80 8080 8443

# If you want to set specific environment variables, you can do so here
# ENV EXAMPLE_VAR=example_value

# Set the entrypoint to match the --init flag and handle signals
ENTRYPOINT ["docker-init", "--"]

# Run the default command (this should not typically be changed from the base image)
CMD ["nextcloud-aio"]
