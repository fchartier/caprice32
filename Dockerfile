FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /home

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y \
    git \
    build-essential \
    gcc \
    g++ \
    make
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y \
    pkg-config libsdl2-dev libfreetype6-dev libpng-dev zlib1g-dev devscripts wget

#COPY compile_cmd.sh .

#RUN git clone https://github.com//raldus/roland && \
#    cd roland && \
#    cmake -H. -Bbuild -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Release && \
#    cmake --build build

# RUN adduser

#WORKDIR /tmp
#RUN wget http://softpres.org/_media/files:ipflib42_linux-x86_64.tar.gz -O /tmp/ipflib42_linux-x86_64.tar.gz
#RUN tar -xf /tmp/ipflib42_linux-x86_64.tar.gz 2>&1 >/dev/null
#RUN cp -r x86_64-linux-gnu-capsimage/include/caps /usr/include

USER 1001:1001
WORKDIR /home/project

# RUM pwd && ls -l &&  cmake -H. -Bbuild -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug &&  cmake --build build

