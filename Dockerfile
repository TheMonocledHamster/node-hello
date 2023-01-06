FROM node:gallium-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY source /app

WORKDIR /app

USER nobody

CMD ["npm", "start"]
