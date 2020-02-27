FROM python:2.7-alpine

WORKDIR /app

COPY docker-registry-retention /app/
RUN pip install requests && rm -rf /root/.cache

CMD         ["--help"]
ENTRYPOINT  ["/app/docker-registry-retention"]
