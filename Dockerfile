FROM python:3.11

WORKDIR /app

COPY . /app
RUN mkdir tmp && pip install .

EXPOSE 1234
CMD [ "python", "-m", "ippserver", "--host", "0.0.0.0", "--port", "1234", "save", "/app/tmp/" ]
