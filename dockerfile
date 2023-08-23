FROM httpd
RUN mkdir /juanpablo-2503285
RUN chmod 777 /juanpablo-2503285
COPY recursos/img3.jpg /juanpablo-2503285
COPY main.sh /juanpablo-2503285
RUN chmod +x /juanpablo-2503285/main.sh
RUN /juanpablo-2503285/main.sh
COPY /2/* /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]