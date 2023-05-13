FROM node:16
WORKDIR /usr/src/app
ENV MONGO_URI=mongodb+srv://animeshgarg42:Thisismongo@123@better-bags-db.n81k0et.mongodb.net
ENV SESSION_SECRET=ANY
ENV STRIPE_PRIVATE_KEY=pk_test_51N7JkkSASgMdFiiWtNbZY95UOmDTDl1FzIEa4y5op6xJQNNSK8xX4lPesxCOtBHeBtjTadYR1rhB4RoSDoiIF3x7003dDBM03L
ENV GMAIL_EMAIL=betterbags54@gmail.com
ENV GMAIL_PASSWORD=betterbags@100
ENV ADMIN_EMAIL=betterbags54@gmail.com
ENV ADMIN_PASSWORD=betterbags@100
ENV ADMIN_COOKIE_NAME=admincookie
ENV ADMIN_COOKIE_PASSWORD=betterbags@100
COPY . .
WORKDIR /usr/src/app/seedDB
RUN node category-seed.js && \
    node products-seed.js
WORKDIR /usr/src/app
RUN npm install
EXPOSE 8080
CMD [ "node", "server.js" ]