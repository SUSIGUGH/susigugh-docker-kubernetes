FROM httpd
RUN mkdir /var/www/html -p
COPY index.html /var/www/html
COPY Capture.PNG /var/www/html
