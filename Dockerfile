FROM petebunting/au-eoed:latest


LABEL authors="Greg Oakes"
LABEL maintainer="gro5@aber.ac.uk"


RUN cd /opt && \
    git clone https://github.com/gro5-AberUni/ALOS-LBand.git && \
    cd ALOS-LBand && \
    cd /opt && \
    sync

WORKDIR /opt/ALOS-LBand/Classification
COPY radwetl_amazon_meta.tar.gz /opt/ALOS-LBand/Classification/radwetl_amazon_meta.tar.gz
RUN cd /opt/ALOS-LBand/Classification && tar -zxf radwetl_amazon_meta.tar.gz \
    && rm /opt/ALOS-LBand/Classification/radwetl_amazon_meta.tar.gz 