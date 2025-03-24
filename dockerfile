# Dockerfile for Flask App
FROM python:3.9-slim

WORKDIR /app

# Copy app files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 7777 for the Flask app
EXPOSE 7777

# Run the Flask app on port 7777
CMD ["python", "app.py"]
