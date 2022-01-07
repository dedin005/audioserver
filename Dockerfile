FROM debian:stable-20211220
WORKDIR app/
run get-mopidy.sh && install.sh
COPY . .
CMD ["./command"]
