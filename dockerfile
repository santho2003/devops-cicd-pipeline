
# 1. Choose a base environment
FROM python:3.12-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy dependency definition first
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy application code
COPY app.py .

# 6. Document the port the application listens on
EXPOSE 5000

# 7. Start the application when the container launches
CMD ["python", "app.py"]
