FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin kode
COPY . .

# Pastikan aplikasi listen pada 0.0.0.0 agar bisa diakses dari luar kontainer
EXPOSE 8080

CMD ["python", "app.py"]
