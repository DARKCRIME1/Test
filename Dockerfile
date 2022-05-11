FROM node:latest

RUN git clone https://github.com/DARKCRIME1/Test /root/newiwif
WORKDIR /root/Test/
RUN git clone https://github.com/DARKCRIME1/Test
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
