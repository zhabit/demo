FROM node:8.11.2
RUN mkdir -p /usr/src/sportsstore
COPY dist /usr/src/sportsstore/dist
COPY authMiddleware.js /usr/src/sportsstore/
COPY data.json /usr/src/sportsstore/
COPY server.js /usr/src/sportsstore/server.js
COPY deploy-package.json /usr/src/sportsstore/package.json
WORKDIR /usr/src/sportsstore
RUN npm install
# 公司内网centos需要配下代理
# RUN npm config set https-proxy "http://z15075:Iloveh3c@proxy02.h3c.com:8080/"
# RUN npm config set proxy "http://z15075:Iloveh3c@proxy02.h3c.com:8080/"
# RUN npm install --production -d --registry=https://registry.npm.taobao.org
EXPOSE 80
CMD ["node", "server.js"]