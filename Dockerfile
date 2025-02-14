# Use official Python image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy project files to the container
COPY . /app

# Install FastAPI and Uvicorn
RUN pip install --no-cache-dir fastapi uvicorn

# Expose port 8000 for the FastAPI app
EXPOSE 8000

# Command to run FastAPI inside the container
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
