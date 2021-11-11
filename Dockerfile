FROM texlive/texlive:latest

RUN mkdir -p /root/.fonts

RUN wget https://github.com/be5invis/Iosevka/releases/download/v11.0.1/ttf-iosevka-ss07-11.0.1.zip -O iosevka.zip && unzip iosevka.zip -d /root/.fonts/iosevka
RUN wget https://fonts.google.com/download?family=Archivo%20Narrow -O archivo.zip && unzip archivo.zip -d /root/.fonts/archivo && rm /root/.fonts/archivo/*.ttf

RUN cp /usr/local/texlive/2021/texmf-var/fonts/conf/texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive-fonts.conf && fc-cache -fsv

CMD ["make"]

WORKDIR "/data"