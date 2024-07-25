# Use Rocky Linux 9 as the base image
FROM rockylinux:9

# Set the working directory in the container
WORKDIR /app


# Update the package manager and install necessary dependencies
 RUN dnf -y update && \
     dnf -y install python3 python3-pip && \
     dnf -y install gcc-c++ && \
     dnf -y install mesa-libGL mesa-libGLU

RUN apt-get update && apt-get install -y build-essential

# Install required packages: scanpy, scipy, anndata, pandas, numpy
RUN pip install scanpy scipy anndata pandas numpy loompy scvelo matplotlib leidenalg scikit-image
RUN pip install scrublet

# Copy your application code to the container
COPY . /app

# Define the entry point to run your application
CMD ["/bin/bash"]
