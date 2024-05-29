FROM petebunting/au-eoed:latest


LABEL authors="Greg Oakes"
LABEL maintainer="gro5@aber.ac.uk"


RUN cd /opt && \
    git clone https://github.com/gro5-AberUni/ALOS-LBand.git && \
    cd ALOS-LBand && \
    cd /opt && \
    sync
