FROM ubuntu:24.04
RUN apt-get update && \
    apt-get install git nodejs npm -y && \
    rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/guru214/CRM-backend.git
WORKDIR /CRM-backend
RUN npm install && \
    npm install -g nodemon
RUN npm run build
EXPOSE 4000
CMD ["npm","start"]
