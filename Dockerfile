# Use the official Python base image for Alpine
# FROM python:3-alpine
FROM python:3

# Set the working directory in the container
WORKDIR /app/files

# Copy the Python script to the working directory
COPY /files .

# Install Python and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the Python script when the container starts
ENTRYPOINT ["./start.sh"]