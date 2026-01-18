FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN useradd -m devopsuser
RUN chown -R devopsuser:devopsuser /app
USER devopsuser

COPY --chown=devopsuser:devopsuser hello-world.js .

EXPOSE 3000

CMD ["node", "hello-world.js"]