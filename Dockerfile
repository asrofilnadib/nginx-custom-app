FROM nginx:alpine

LABEL maintainer="Asrofil Nadib <asrofilnadibs28@gmail.com>"
LABEL version="2.0.0"
LABEL description="Custom Nginx application with Docker Registry support"

# Copy custom HTML
COPY nginx/html/ /usr/share/nginx/html/

# Copy custom nginx config
COPY nginx/conf/nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/health || exit 1

CMD ["nginx", "-g", "daemon off;"]
