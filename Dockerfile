FROM python:3.9-alpine

RUN python -m pip install --upgrade pip
RUN python -m pip install gunicorn
# Uncomment if you want to get the latest version
RUN python -m pip install "bioregistry[web]>=0.2.7"
# RUN python -m pip install git+https://github.com/bioregistry/bioregistry.git#egg=bioregistry[web]
ENTRYPOINT bioregistry web --port 8766 --host "0.0.0.0" --with-gunicorn --workers 4
