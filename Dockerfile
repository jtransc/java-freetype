FROM mhaye/lljvm
RUN apt-get update
RUN apt-get install make automake patch nano -y
ADD limits.h /usr/local/lib/clang/1.1/include/limits.h
#ENTRYPOINT ["/bin/bash"]
