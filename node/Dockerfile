# 1. Use a lightweight base image (Alpine is highly recommended for size)
FROM node:20-alpine

# 2. Set the working directory inside the container
WORKDIR /usr/src/app

# 3. Copy dependency definitions first (to leverage Docker layer caching)
COPY package*.json ./

# 4. Install dependencies (npm ci is preferred for clean production installs)
RUN npm install

# 5. Copy the rest of your application code
COPY . .

# 6. Expose the port your app runs on
EXPOSE 3000

# 7. Define the command to run your app
CMD ["node", "app.js"]
