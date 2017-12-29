# Copyright 2017 (c) Michael Thomas (malinka) <malinka@entropy-development.com>
# Distributed under the terms of the GNU Affero General Public License v3

FROM aelmalinka/arch
LABEL maintainer="Michael Thomas (malinka) <aelmalinka@gmail.com>"

RUN yes | pacman -Syu postgresql

ENV PGDATA="/postgres/data"

RUN mkdir -p /run/postgresql
RUN chown -R postgres:postgres /run/postgresql

RUN mkdir -p /postgres
RUN chown -R postgres:postgres /postgres
VOLUME /postgres

EXPOSE 5432
