FROM node:22-alpine

WORKDIR /app

COPY package.json .

RUN corepack enable && pnpm install --ignore-scripts 

COPY . .

EXPOSE 3000

CMD ["pnpm", "start"]