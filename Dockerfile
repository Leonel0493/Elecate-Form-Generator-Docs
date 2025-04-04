FROM python:3.11-slim

RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

RUN pip install sphinx sphinx_rtd_theme

WORKDIR /docs

CMD ["make", "html"]
