
/* cliTCPIt.c - Exemplu de client TCP
   Trimite un numar la server; primeste de la server numarul incrementat.

   Autor: Lenuta Alboaie  <adria@infoiasi.ro> (c)2009
*/
#include <netdb.h>
#include <string.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include "mainwindow.h"
#include "login_signup.h"
#include <QApplication>
#include <errno.h>
#include <unistd.h>
#include <csignal>
/* codul de eroare returnat de anumite apeluri */
extern int errno;
int sd;			// descriptorul de socket

struct sockaddr_in server;	 // structura folosita pentru conectare
/* portul de conectare la server*/
#define PORT 2029

// Credit: Lenuta Alboaie

int main (int argc, char *argv[])
{
  QApplication a(argc, argv);
  MainWindow w;
  w.show();
  /* cream socketul */
  if ((sd = socket (AF_INET, SOCK_STREAM, 0)) == -1)
    {
      perror ("Eroare la socket().\n");
      return errno;
    }

  /* umplem structura folosita pentru realizarea conexiunii cu serverul */
  /* familia socket-ului */
  server.sin_family = AF_INET;
  /* adresa IP a serverului */
  server.sin_addr.s_addr = inet_addr("127.0.0.1");
  /* portul de conectare */
  server.sin_port = htons (PORT);

  /* ne conectam la server */
  if (connect (sd, (struct sockaddr *) &server,sizeof (struct sockaddr)) == -1)
    {
      perror ("[client]Eroare la connect().\n");
      return errno;
    }


    return a.exec();

    close(sd);

}
