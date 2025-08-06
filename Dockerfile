# Use Node.js official lightweight image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Create app and install express
RUN npm init -y && npm install express

# Create Hello World app
RUN echo "const express = require('express'); \
const app = express(); \
app.get('/', (req, res) => res.send('Hello World!')); \
app.listen(3000, () => console.log('Listening on port 3000'));" > index.js

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
