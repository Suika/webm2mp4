FROM alpine:3.10
WORKDIR /app
CMD ["python3", "/app/bot.py"]
ENV BOT_TOKEN=""

COPY . /app
RUN apk add --update --no-cache python3 ffmpeg && \
    pip3 install -r requirements.txt
