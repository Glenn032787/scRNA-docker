FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install required packages: scanpy, scipy, anndata, pandas, numpy
RUN pip install scanpy scipy anndata pandas numpy loompy scvelo matplotlib

# Copy your application code to the container
COPY . /app

# Define the entry point to run your application
CMD ["/bin/bash"]
