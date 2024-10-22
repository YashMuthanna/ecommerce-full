# Dockerfile for Django Backend

# 1. Base image
FROM python:3.7-slim

# 2. Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 3. Set the working directory
WORKDIR /app

# 4. Copy the requirements file and install dependencies
COPY ./requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

# 5. Copy the entire backend project
COPY . /app

# 6. Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
