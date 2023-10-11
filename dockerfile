FROM golang:1.9.6 as BUILDER

WORKDIR /app
COPY fullcycle_rocks.go .
COPY go.mod .

RUN go build -o desafioFullcycle .

FROM scratch

COPY --from=BUILDER /app/desafioFullcycle ./desafioFullcycle

CMD ["./desafioFullcycle"]
