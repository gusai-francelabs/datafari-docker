datafari-docker
===============

Dockerfile for Datafari

To create the image otavard/datafari, execute the following command on the datafari folder:

    docker build -t otavard/datafari .


Running Datafari

Run the following command to start Datafari:

    docker run -t -i -p 8080:8080 otavard/datafari
