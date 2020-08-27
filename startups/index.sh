#!usr/bin/env bash

# dormao: Execute current shells in current directory
export ME_PATH=~/me
export STARTUP_PATH=${ME_PATH}/startup
for file in $(ls ${STARTUP_PATH})
  do
   if [ ! -d ${STARTUP_PATH}/$file ] && [ ${file: -2} == "sh" ] && [ ! ${file} == "index.sh" ];
   then
      #echo "Execute ${file}"
      source ${STARTUP_PATH}/$file
      #echo '[Script] compiling proto: '${file}
      #protoc \
      #--micro_out=paths=source_relative:proto \
      #--go_out=paths=source_relative:proto \
      #-I${GOPATH}/src \
      #-I${PROTO_DIR} ${PROTO_DIR}/${file}
    fi
  done

