# Dockerfile for C++ application
FROM gcc:latest

# Install required dependencies
RUN apt-get update && apt-get install -y \
    cmake \
    libmariadb-dev

# Set the working directory
WORKDIR /app

# Copy application source code to the container
COPY . .

# Build the C++ application
RUN mkdir build && cd build && cmake .. && make

# Run the application
CMD ["./build/your_cpp_application"]
