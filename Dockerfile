FROM python:3.7.5
WORKDIR /app 
COPY . /app/
RUN pip install -r /app/requirements.txt
#RUN ["bash", "/app/start_backend.sh"]
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
