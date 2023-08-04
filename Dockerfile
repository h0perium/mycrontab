FROM alpine:3.18

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

RUN apk update && \
    apk add bash && \
    apk add mysql-client nano && \
    apk add openssh

#ENV CRON_FILE=

ENTRYPOINT ["/entrypoint.sh"]
