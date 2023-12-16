FROM tiangolo/uvicorn-gunicorn:python3.10

WORKDIR /app

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir --upgrade -r /tmp/requirements.txt

COPY . /app/

CMD ["uvicorn","main:app", "--port","5001", "--host","0.0.0.0"]