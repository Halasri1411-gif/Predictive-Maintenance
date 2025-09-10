FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app code
COPY app.py .

# Copy templates and static files
COPY templates/ ./templates/
COPY static/ ./static/

CMD ["python", "app.py"]
