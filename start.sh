#!/bin/bash

docker run -i -t \
	-p 49161:1521 -p 49160:3000 -p 49162:8080 \
	-v `pwd`/app:/opt/app \
	--entrypoint /bin/bash \
	training4developers/node-oracle
