# Start from a base appropriate for latex work
FROM blang/latex:ubuntu

# Install poppler-utils in order to generate preview images
RUN apt-get update -q && apt-get install -qy poppler-utils

