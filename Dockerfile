# השתמש באימג' בסיס רשמי של פייתון
FROM python:3.8.3-slim-buster

# הגדר את ספריית העבודה בתוך הקונטיינר
WORKDIR /app

# העתק את קובץ הדרישות והתקן אותן
# זה מאפשר caching יעיל יותר
COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

# העתק את שאר קבצי הפרויקט
COPY . .

# הגדר את הפקודה שתופעל כאשר הקונטיינר יופעל
CMD ["python", "app.py"]
