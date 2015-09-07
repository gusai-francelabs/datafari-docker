datafari-docker
===============

Dockerfile for Datafari

To create the image datafari/datafariv2, execute the following command on the datafari folder:

    docker build -t datafari/datafariv2 .


Running Datafari

Run the following command to start Datafari:

    docker run -d -p 8080:8080 datafari/datafariv2
