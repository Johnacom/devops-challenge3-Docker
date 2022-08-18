FROM postgres:latest
COPY ./init-db.sh /docker-entrypoint-initdb.d/
WORKDIR /docker-entrypoint-initdb.d/
RUN sed -i -e 's/\r$//' init-db.sh