FROM dockerfile/nginx

ONBUILD ADD ./*.crt /etc/ssl/
ONBUILD ADD ./*.key /etc/ssl/

# Define mountable directories.
VOLUME ["/data", "/etc/nginx/sites-enabled", "/var/log/nginx"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443