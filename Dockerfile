# 1️⃣ Base image
FROM python:3.12-slim

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy dependency file first (for caching)
COPY requirements.txt .

# 4️⃣ Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy application code
COPY . .

# 6️⃣ Expose Flask port
EXPOSE 4000

# 7️⃣ Run the application
CMD ["python", "app.py"]
