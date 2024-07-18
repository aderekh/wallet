FROM postgres:latest

# Set environment variables
ENV POSTGRES_DB=igaming_db
ENV POSTGRES_USER=igaming_user
ENV POSTGRES_PASSWORD=igaming_password

# Copy SQL script to initialize the database
COPY createdb.sql /docker-entrypoint-initdb.d/
