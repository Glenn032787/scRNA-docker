FROM python:3.9.19-slim

# Set the working directory in the container
WORKDIR /app

RUN apt-get update && apt-get install -y gcc

# Install required packages: scanpy, scipy, anndata, pandas, numpy
RUN pip install scanpy scipy anndata pandas numpy loompy scvelo matplotlib leidenalg scikit-image
RUN pip install scrublet

# Copy your application code to the container
COPY . /app

# Define the entry point to run your application
CMD ["/bin/bash"]
