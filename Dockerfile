FROM python:3

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY . /usr/src/app/
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080

RUN chmod a+x ./run.sh

ENTRYPOINT ["./run.sh"]
#docker run --rm --name some-postgres -e POSTGRES_PASSWORD=mypwdfordeals -p 5433:5432 -d postgres