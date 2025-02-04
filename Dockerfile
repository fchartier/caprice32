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
    libsdl2-dev libfreetype-dev libpng-dev zlib1g-dev

#COPY compile_cmd.sh .

#RUN git clone https://github.com//raldus/roland && \
#    cd roland && \
#    cmake -H. -Bbuild -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Release && \
#    cmake --build build

# RUN adduser

USER 1001:1001
WORKDIR /home/project

# RUM pwd && ls -l &&  cmake -H. -Bbuild -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug &&  cmake --build build

