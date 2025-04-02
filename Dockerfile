FROM alpine:3.21

RUN apk add --no-cache aws-cli coreutils jq

COPY iam-credentials-disabler /

ENTRYPOINT ["/iam-credentials-disabler"]
