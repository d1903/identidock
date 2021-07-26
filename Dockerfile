FROM python:3.7

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==1.0.2 uWSGI==2.0.17.1 requests==2.20.0 redis==3.4.0
WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSe 9090 9191
USER uwsgi

CMD ["/cmd.sh"]
