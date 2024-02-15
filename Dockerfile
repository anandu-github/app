# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /opt/flask-app

# Copy the current directory contents into the container at /opt/flask-app
COPY . /opt/flask-app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask is running on
EXPOSE 5000

# Define the command to run your Flask application
#CMD ["python3", "hello.py"]
CMD ["python3", "-u", "hello.py", "&"]
