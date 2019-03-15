FROM node:8.15-alpine AS base

FROM base as cache
# set working directory
WORKDIR /app
# copy project file
COPY package*.json ./
# install node packages
RUN npm set progress=false && \
    npm install && \
    npm cache clean --force

FROM base
# copy node_modules
COPY --from=cache /app/node_modules ./node_modules
# copy app sources
COPY . .
# Run npm run build on start-up
CMD npm run build