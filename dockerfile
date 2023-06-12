# Use the official Ubuntu as the base image
FROM archlinux:latest

# Update the package lists
RUN pacman -Syu --noconfirm

# Clone your Zola project from Git
RUN pacman -S zola --noconfirm

RUN echo -e "https://andreasdimizas.xyz\nn\ny\nn" | zola init myblog

WORKDIR /myblog

# Build your Zola website
RUN zola build

