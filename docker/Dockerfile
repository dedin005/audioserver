FROM debian:stable-20211220
WORKDIR /app
COPY . .
RUN systemctl start apache2
CMD ["./command"]
