FROM python:3.9
WORKDIR /app
COPY fact.py .
CMD ["python", "fact.py"]
