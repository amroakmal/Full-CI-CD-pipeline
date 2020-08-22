FROM nginx:latest

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY ./index.html /app/index.html

# hadolint ignore=DL3013

## Step 3:
# Expose port 80
EXPOSE 80