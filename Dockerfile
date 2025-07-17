FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy ALL files (including app.py)
COPY . .

# Explicitly set the command to use app.py
CMD ["python", "app.py"]