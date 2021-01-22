FROM python:3.6

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY . /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt
RUN python ./manage.py makemigrations
RUN python ./manage.py migrate
RUN python ./manage.py createsuperuser --username USER1 --email '' --noinput
EXPOSE 8080
RUN chmod a+x ./run.sh

ENTRYPOINT ["./run.sh"]

#dockerun --rm --name some-postgres -e POSTGRES_PASSWORD=mypwdfordeals -p 5433:5432 -d postgres