FROM python:3.12-slim

# Install runtime deps (add git only if you need it at runtime)
RUN pip install --no-cache-dir pyyaml

# Copy scripts
COPY feed.py /usr/local/bin/feed.py
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Default entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
