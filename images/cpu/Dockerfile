FROM runpod/base:0.6.3-cpu

RUN apt-get update && apt-get install --yes --no-install-recommends pv tree mc && \
rm -rf /var/lib/apt/lists/* && \
curl -s https://rclone.org/install.sh | bash > /dev/null 2>&1

COPY pre_start.sh /

CMD ["/start.sh"]

