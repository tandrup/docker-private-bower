# Private bower registry with caching

The docker image need to know which IP/hostname it can be reached on. This is done by specifying the `ADDRESS` environment variable at launch:

    docker run -e ADDRESS=192.168.59.103 \
               -p 5678:5678 -p 6789:6789 -p 7891:7891 \
               private-bower

