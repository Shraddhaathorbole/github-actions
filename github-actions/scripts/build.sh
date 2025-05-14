#!/bin/bash

# Set up Git user identity
git config --global user.email "shraddhathorbole88@gmail.com"
git config --global user.name "Shraddhaathorbole"

echo "Starting build process..."
echo "Compiling code..."
sleep 1
echo "Build complete at $(date)"
echo "Rebuilding project - $(date)"

# Initialize git and commit changes
git init
git add .
git commit -m "Add GitHub Actions workflow"
git branch -M main

# Set the remote URL for pushing
git remote add origin https://github.com/Shraddhaathorbole/github-actions.git

# Push changes (using GITHUB_TOKEN for authentication)
git push https://x-access-token:${{ secrets.GITHUB_TOKEN }}@github.com/Shraddhaathorbole/github-actions.git main
