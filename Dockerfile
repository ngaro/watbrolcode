FROM ubuntu
WORKDIR /home
COPY main.c .
RUN apt-get update && apt-get install -y gcc && gcc -Wall -Werror main.c -o mijnbrolcode
CMD ["/home/mijnbrolcode"]
