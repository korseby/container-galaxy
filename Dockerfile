FROM bgruening/galaxy-stable

MAINTAINER Kristian Peters <kpeters@ipb-halle.de>

LABEL Description="Official GALAXY Docker image."

# Expose port 80 (webserver), 21 (FTP server), 8800 (Proxy)
EXPOSE :80

# Autostart script that is invoked during container start
ENTRYPOINT ["/usr/bin/startup"]

