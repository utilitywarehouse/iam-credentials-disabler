FROM alpine:3.22

RUN apk add --no-cache aws-cli coreutils jq yq bash

COPY iam-credentials-disabler /

ENTRYPOINT ["/iam-credentials-disabler"]
