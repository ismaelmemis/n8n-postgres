# Use the official n8n image as the base
FROM docker.n8n.io/n8nio/n8n

# Set working directory to the default n8n app folder
WORKDIR /home/node

# Install cheerio and its dependencies
RUN npm install cheerio

# Expose port 5678 (N8N default)
EXPOSE 5678

# Set the default command (which is already set in the base n8n image)
CMD ["npm", "start"]