FROM debian
RUN apt-get update && apt-get -y install git nginx-full php5-fpm
ADD https://s3.amazonaws.com/gitlist/gitlist-master.tar.gz /var/www/
RUN cd /var/www; tar -zxvf gitlist-master.tar.gz
#RUN chmod -R 777 /var/www/gitlist
#RUN cd /var/www/gitlist/; mkdir cache; chmod 777 cache
RUN mkdir /var/www/gitlist/cache
RUN chown -R www-data:www-data /var/www/gitlist
ADD config.ini /var/www/gitlist/
ADD nginx.conf /etc/nginx/

EXPOSE 80

ENTRYPOINT service php5-fpm start && nginx && tail -F /var/log/nginx/*.log
