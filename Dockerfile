FROM sprkl/npm

# make a directory for the application, otherwise files will be copied to the root folder
RUN mkdir -p /code
WORKDIR /code

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

RUN npm link sprkl

# Add source files
COPY . .

ENV PORT 3000
EXPOSE 3000
