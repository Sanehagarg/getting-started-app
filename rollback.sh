#!/bin/bash
# Stop current deployment
echo "Stopping current deployment..."
kubectl delete deployment sample-app-deployment
# Rollback to previous stable version
echo "Rolling back to previous stable version..."
git checkout HEAD^ # Assuming previous commit is stable
# Additional steps to rebuild and redeploy the application go here
# Cleanup
echo "Rollback complete."
