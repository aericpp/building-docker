FROM debian:11-slim

# Label
LABEL "com.github.actions.name"="Docker image for compiling with debain"
LABEL "com.github.actions.description"="Use the Docker image to compile x86_64 programs for Linux."
LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.icon"="download-cloud"

LABEL "repository"="http://github.com/aericpp/building-docker"
LABEL "homepage"="https://github.com/aericpp/building-docker"
LABEL "maintainer"="aericpp"


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]