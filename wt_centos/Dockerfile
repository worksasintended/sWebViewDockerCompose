FROM giovtorres/docker-centos7-slurm:latest
MAINTAINER Stefan Kemnitz kemnitz.stefan@gmail.com

RUN yum -y install centos-release-scl
RUN yum -y install devtoolset-7-gcc*  

RUN yum -y install cmake3 boost boost-devel sudo 



RUN source /opt/rh/devtoolset-7/enable && \
    git clone --depth=1 https://github.com/emweb/wt.git && \
    cd wt && \
    CC=gcc CXX=g++ cmake3 -D CMAKE_INSTALL_PREFIX=/usr/. && \
    make -j 8 &&\ 
    make install
COPY init.sh /init.sh
COPY supervisord.conf /etc/
ENTRYPOINT ["/init.sh"]
EXPOSE 8080
# TODO just run munge by supervisord CMD ["/init.sh"]

