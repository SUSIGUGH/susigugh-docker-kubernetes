FROM httpd
RUN mkdir /app
COPY . /app
CMD ["nohup","node","/app/file.js","&"]
