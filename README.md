# Custom Nginx Docker Application

A custom Nginx application with Docker registry support, automated CI/CD via GitHub Actions, and deployment to both Docker Hub and GitHub Container Registry.

## Features

- 🐳 Docker containerized
- 🌐 Custom Nginx HTML pages
- 🔄 Automated CI/CD with GitHub Actions
- 📦 Multi-registry support (Docker Hub + GHCR)
- 🎨 Beautiful, responsive UI

## Quick Start

### Pull and Run from Docker Hub

docker pull <your-dockerhub-username>/nginx-custom-app:latest
docker run -d --name nginx-app -p 8080:80 <your-dockerhub-username>/nginx-custom-app:latest
