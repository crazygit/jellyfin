FROM jellyfin/jellyfin

COPY jellyfin-web/libraries/subtitles-octopus* /jellyfin/jellyfin-web/libraries/
RUN apt-get update && apt-get install -y locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
