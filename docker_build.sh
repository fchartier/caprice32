#!/bin/bash
docker build -t cap32_build_env .
#docker run --rm -it --user ${UID}:${GID} -v ${PWD}:/home/project roland_build_env 
docker run --rm -it --user ${UID}:${GID} -v ${PWD}:/home/project cap32_build_env "env"
#docker run --rm -it --user ${UID}:${GID} -v ${PWD}:/home/project cap32_build_env "make clean && make"
docker run --rm -it --user ${UID}:${GID} -v ${PWD}:/home/project cap32_build_env make clean
docker run --rm -it --user ${UID}:${GID} -v ${PWD}:/home/project cap32_build_env make -j 3
#docker run --rm -it --user ${UID}:${GID} -v ${PWD}:/home/project cap32_build_env make -j 3 WITH_IPF=true 
#docker run --rm -it --user ${UID}:${GID} -v ${PWD}:/home/project cap32_build_env ./docker_build_inner.sh
