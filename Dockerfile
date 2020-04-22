FROM docker:stable
RUN apk add --update bash
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
