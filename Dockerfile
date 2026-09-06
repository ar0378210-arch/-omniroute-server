FROM node:24-alpine

RUN npm install -g omniroute

ENV NODE_ENV=production
ENV PORT=20128
ENV HOSTNAME=0.0.0.0
ENV DATA_DIR=/app/data

WORKDIR /app
RUN mkdir -p /app/data

EXPOSE 20128

VOLUME ["/app/data"]

CMD ["omniroute", "--no-open"]
