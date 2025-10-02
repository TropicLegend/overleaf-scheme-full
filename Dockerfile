FROM sharelatex/sharelatex:latest

# Create and set the working directory inside the container
WORKDIR /overleaf
RUN tlmgr install scheme-full
# Copy all the application source files into the container

# Expose port 3000 for the application
EXPOSE 80

# Define the command to run the application
ENTRYPOINT ["/sbin/my_init"]
