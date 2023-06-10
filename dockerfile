# Use the official Ubuntu as the base image
FROM archlinux:latest

# Update the package lists
RUN pacman -Syu --noconfirm

# Clone your Zola project from Git
RUN pacman -S zola --noconfirm

#RUN mkdir -p /home/myblog/content && \
#    echo "title = \"My Blog\"" > /home/myblog/content/_index.md && \
#    mkdir -p /home/myblog/templates && \
#    touch /home/myblog/templates/base.html && \
#    mkdir -p /home/myblog/static/css && \
#    touch /home/myblog/static/css/style.css && \
#    cd /home/myblog/



RUN echo -e "https://andreasdimizas.xyz\nn\ny\nn" | zola init myblog

WORKDIR /myblog

# Build your Zola website
RUN zola build
#COPY ./myblog ./public
#VOLUME /myblog/templates

# Expose the default Zola port (usually 1111)
#EXPOSE 8080

# Define the command to start the Zola server
#CMD  zola serve --interface 0.0.0.0 --port 8080
