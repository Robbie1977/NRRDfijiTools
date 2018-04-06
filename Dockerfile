FROM fiji/fiji

ENV FIJI=/fiji/fiji-linux64
ENV MACRO=/NRRDtools/h5j2NRRD.ijm

VOLUME /data

RUN cd / && git clone https://github.com/Robbie1977/NRRDtools.git 

WORKDIR /data/

CMD ["/NRRDtools/h5j2NRRD.sh"]
