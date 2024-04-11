FROM postgres:latest
ENV POSTGRES_PASSWORD=mypass
ENV POSTGRES_USER=myuser
ENV POSTGRES_DB=mydatabase
COPY fixtures.sql /docker-entrypoint-initdb.d/fixtures.sql