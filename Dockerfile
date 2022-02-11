FROM node:14
RUN apt update && apt install -y libasound2 libatk-bridge2.0-0 libatk1.0-0 libcups2 libdrm2 libgbm1 libnss3 libxcomposite1 libxdamage1 libxfixes3 libxkbcommon0 libxrandr2 && rm -fr /var/lib/apt/lists/*
COPY package.json package-lock.json ./
RUN npm install
RUN mkdir screenshots
COPY index.js ./
CMD npm start
