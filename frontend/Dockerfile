FROM node:8.11.4-alpine
LABEL maintainer=janikgar@pm.me
WORKDIR /app
ADD package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8080