FROM ubuntu:22.04
COPY script_B.sh /usr/local/bin/script_B.sh
RUN chmod +x /usr/local/bin/script_B.sh
WORKDIR /app
CMD ["/usr/local/bin/script_B.sh"]
