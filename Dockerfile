FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache wget unzip

# Download and set up PocketBase
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.25.8/pocketbase_0.25.8_linux_amd64.zip \
    && unzip pocketbase_0.25.8_linux_amd64.zip \
    && chmod +x pocketbase \
    && rm pocketbase_0.25.8_linux_amd64.zip

# Expose the port that PocketBase will run on
EXPOSE 8080

# Set up a volume for the PocketBase data
VOLUME /pb_data

# Start PocketBase
CMD ["./pocketbase", "serve", "--http", "0.0.0.0:8080"]
