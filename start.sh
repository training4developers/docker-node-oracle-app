#!/bin/bash

#docker pull training4developers/node-oracle

docker run -i -t \
	-p 49161:1521 -p 49160:3000 -p 49162:8080 \
	-v `pwd`/:/opt/app \
	training4developers/node-oracle

#	--entrypoint /bin/bash \
