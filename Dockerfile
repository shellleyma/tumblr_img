FROM python:3.5

WORKDIR /usr/src/tumblr
RUN pip install --upgrade pip
RUN pip install supervisor


RUN mkdir -p /var/log/supervisor
ADD ./config/supervisord.conf /usr/local/supervisord.conf



CMD ["/usr/local/bin/supervisord", "-n"]
RUN python general_run.py