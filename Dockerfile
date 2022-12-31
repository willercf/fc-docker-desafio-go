FROM golang:1.16-alpine AS base
WORKDIR /app
COPY app/ .
RUN go build will.go


FROM scratch AS main
COPY --from=base /app /app
ENTRYPOINT ["/app/will"]
