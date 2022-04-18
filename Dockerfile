FROM texlive/texlive:latest
RUN mkdir -p /root/.fonts
RUN curl -L https://github.com/be5invis/Iosevka/releases/download/v11.0.1/ttf-iosevka-ss07-11.0.1.zip -o iosevka.zip && unzip iosevka.zip -d /root/.fonts/iosevka
RUN curl -L https://fonts.google.com/download?family=Archivo%20Narrow -o archivo.zip && unzip archivo.zip -d /root/.fonts/archivo && rm /root/.fonts/archivo/*.ttf
RUN cp /usr/local/texlive/2022/texmf-var/fonts/conf/texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive-fonts.conf && fc-cache -fsv

CMD ["make"]

WORKDIR "/data"
