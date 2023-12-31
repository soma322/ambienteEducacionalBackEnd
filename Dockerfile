# Use the latest Python Version as the base image
FROM python:3.11.2-slim-buster
RUN apt-get update \
    && apt-get -y install libpq-dev gcc 
    
# Setup the working directory for the container
WORKDIR /code

# Copy the requirements file to the container
COPY ./requirements.txt ./

# Install the Python dependencies using Python 
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY ./ ./

# Setup the command to run when the container starts
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]