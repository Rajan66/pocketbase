FROM ghcr.io/muchobien/pocketbase:latest

# No VOLUME statement - use Railway volumes instead
# Mount a volume to /pb_data in Railway dashboard

# Command will use the Railway PORT environment variable
CMD ["./pocketbase", "serve", "--http", "0.0.0.0:$PORT"]
