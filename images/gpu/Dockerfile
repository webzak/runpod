FROM runpod/base:2.4.0-py3.11-cuda12.4.1-devel-ubuntu22.04

RUN apt-get update && apt-get install --yes --no-install-recommends pv tree mc unzip vim && \
rm -rf /var/lib/apt/lists/* && \
curl -s https://rclone.org/install.sh | bash > /dev/null 2>&1

COPY pre_start.sh /

CMD ["/start.sh"]