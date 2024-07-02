# Use the specified Node.js version
ARG NODE_VERSION=20.11.0
FROM node:${NODE_VERSION}-alpine

# Set environment variables
ENV NODE_ENV production
ENV PORT 7000
ARG HOST=http://185.192.96.18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and yarn.lock into the container
COPY package.json yarn.lock ./

# Install dependencies using yarn
RUN --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=yarn.lock,target=yarn.lock \
    --mount=type=cache,target=/root/.yarn \
    yarn install --production --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Expose port 7000
EXPOSE 7000

# Define volume for persistent data
VOLUME /usr/src/app/public

# Start the application
CMD ["yarn", "start"]
