FROM alpine:3.18

# מתקינים mysql-client ו-curl
RUN apk add --no-cache mysql-client curl bash

COPY check.sh /check.sh
RUN chmod +x /check.sh

CMD ["/check.sh"]
