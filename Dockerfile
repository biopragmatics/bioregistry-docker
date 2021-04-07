FROM python:3.8

RUN python -m pip install --upgrade pip
RUN python -m pip install gunicorn
RUN python -m pip install git+https://github.com/cthoyt/bioregistry.git#egg=pyobo[web]
ENTRYPOINT ["bioregistry", "web", "--port", "8766", "--host", "0.0.0.0", "--with-gunicorn", "--workers", "4"]
