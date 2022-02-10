FROM python:alpine3.7
RUN mkdir /mydir
COPY . /mydir
WORKDIR /mydir
ENV USERNAME="ATC_USERNAME" 
ENV PASSWORD="ATC_PASSWORD"
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT [ "python" ]
CMD [ "serve.py" ]
