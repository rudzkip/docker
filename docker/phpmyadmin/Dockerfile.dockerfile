FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD = toor

COPY ./politeguys /docker-entrypoint-initdb.d/

