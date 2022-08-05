#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag kc-devops-app:1.1 .

# Step 2:
# List docker images
docker images

# Step 3:
# Run flask app
docker run --name project-four -dp 8000:80 kc-devops-app:1.1
