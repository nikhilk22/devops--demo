# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose app port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]

