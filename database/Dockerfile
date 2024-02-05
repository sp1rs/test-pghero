FROM postgres:14

# Set environment variables for PostgreSQL
ENV POSTGRES_DB=mydatabase1,mydatabase2,mydatabase3
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Copy the SQL script to the Docker image
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port
EXPOSE 5432