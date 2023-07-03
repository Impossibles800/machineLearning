# Use an official Python runtime as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the project files to the container
COPY . .

# Set the entry point for the container
ENTRYPOINT ["python"]

# Run your Python code
CMD ["Linear_Regression.py"]
