# Use Node.js v20
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application
COPY . .

# Build the Next.js app
RUN yarn build

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]

