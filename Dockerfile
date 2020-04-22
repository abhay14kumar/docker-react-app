#First Feature
#Temp
#2nd Commit from Temp
=======
#abhay
#2nd Commit form abhay
FROM node:alpine as builder
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html

