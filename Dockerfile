# Use an official Python runtime as the base image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Poetry files into the container
COPY pyproject.toml poetry.lock ./

# Install the required packages
RUN pip install --upgrade pip && \
  pip install poetry && \
  poetry install --no-root

# Copy the Python files into the container
COPY src/ ./src

# Expose the port the app runs on
EXPOSE 8000

# Run the application
ENTRYPOINT ["poetry", "run", "python", "-m", "src.app"]
