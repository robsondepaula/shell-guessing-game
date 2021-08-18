FROM alpine:latest

WORKDIR /usr/src/app/shell-guessing-game

COPY . .

RUN chmod +x guessinggame.sh

# Run
ENTRYPOINT ["./guessinggame.sh"]

