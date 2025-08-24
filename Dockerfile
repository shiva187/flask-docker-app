# Start from official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files into container
COPY requirements.txt requirements.txt
COPY app.py app.py

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

