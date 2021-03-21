
#include<cstring>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <errno.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <netdb.h>
#include <string.h>
#include <QDebug>
#include <arpa/inet.h>
#ifndef UTILITIES_H
#define UTILITIES_H


extern int sd;
extern char username_gen[40];
extern int errno;
extern struct sockaddr_in server;

#endif // UTILITIES_H

