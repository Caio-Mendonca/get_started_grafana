FROM python:3.9

WORKDIR /app/

COPY . .

RUN pip install -r requirements.txt

ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH

CMD uvicorn --host=0.0.0.0 app.main:app
