FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends python3 \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www
COPY script_B.sh /usr/local/bin/script_B.sh
RUN chmod +x /usr/local/bin/script_B.sh
CMD ["/bin/bash","-c","/usr/local/bin/script_B.sh & exec python3 -m http.server 8080"]
