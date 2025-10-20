# Minimal image just to exercise build & push
FROM alpine:3.19

# Attach repo metadata to the image (nice to have)
LABEL org.opencontainers.image.source=$GITHUB_REPOSITORY

# Run as non-root
RUN adduser -D app
USER app

# Do something harmless so the container "runs"
CMD ["sh", "-c", "echo 'az-devops-labs container is alive' && sleep 3600"]
