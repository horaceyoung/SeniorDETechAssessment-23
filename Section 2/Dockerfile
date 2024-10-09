# Use the official PostgreSQL image from the Docker Hub
FROM postgres:latest

# Set environment variables
ENV POSTGRES_DB=ecommerce
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=password

# Copy DDL statements to the container
COPY setup.sql /docker-entrypoint-initdb.d/

# Expose port 5432 for PostgreSQL
EXPOSE 5432