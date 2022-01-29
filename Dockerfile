# The base go-image
FROM golang:alpine

RUN apk --no-cache add curl

# Set environment variables
ENV TELEGRAM_BOT_TOKEN=${TELEGRAM_BOT_TOKEN}

# # # Create a directory for the app
# RUN mkdir /app
 
# # # Copy all files from the current directory to the app directory
# COPY . /app
 
# # Set working directory
WORKDIR /go_telegram_bot
ADD . .
 
# Run command as described:
# go build will build an executable file named server in the current directory
RUN go mod init go_telegram_bot
# RUN go build -o server .
# RUN go mod download

# Expose the webservers port
EXPOSE 3000
 
# Run the server executable
# CMD ["/go_telegram_bot/server"]
ENTRYPOINT go build main.go && ./main