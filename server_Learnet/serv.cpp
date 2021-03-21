#include <sys/socket.h>
#include <QApplication>
#include <iostream>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <QSqlDatabase>
#include <pthread.h>
#include <errno.h>
#include <QSqlDriver>
#include <QSqlError>
#include <QCoreApplication>
#include <QSqlQuery>
#include <sqlite3.h>
#include <QDebug>
#include <signal.h>
#include <string>
#include "sha256.h"


/* portul folosit */
#define PORT 2029

/* codul de eroare returnat de anumite apeluri */
extern int errno;



typedef struct thData{
    int idThread; //id-ul thread-ului tinut in evidenta de acest program
    int cl; //descriptorul intors de accept
}thData;

static void *treat(void *); /* functia executata de fiecare thread ce realizeaza comunicarea cu clientii */
void raspunde(void *);

QSqlDatabase Database;



int Login(struct thData tdL){

    int data_length;


    fflush(stdout);

    //read de la client lungime, read date
    if (read (tdL.cl, &data_length, sizeof(int)) <= 0)
    {
        printf("Thread %d\n",tdL.idThread);
        qDebug()<<"Server: eroare, nu am putut citi lungimea datelor de login de la client\n";

    }
char* data = (char*) malloc(82);
    fflush (stdout);

    if (read(tdL.cl, data, data_length) <=0)
    {
        printf("Thread.. %d\n",tdL.idThread);
        qDebug()<<"Server: eroare, nu am putut citi datele de login de la client\n";


    }

char* fin_user = (char*)malloc(40);
bzero(fin_user, 40);
char* fin_pass = (char*)malloc(40);
bzero(fin_pass, 40);
QSqlQuery interogare;
char *tokenize = strtok( data, "#" );
int i=0;


    strcpy(fin_user, tokenize);
    tokenize = strtok( NULL, "#" );
    strcpy(fin_pass,tokenize);

int success = 0;

std::string pass_sha256;
pass_sha256 = sha256(fin_pass);
char* pass2_sha256 = new char[pass_sha256.length() + 1];
std::copy(pass_sha256.begin(), pass_sha256.end(), pass2_sha256);
int lg = strlen(pass2_sha256);
pass2_sha256[pass_sha256.size()]='\0';



printf("Server login : Username %s, am criptat parola: %s\n", fin_user, pass2_sha256);



interogare.prepare("select * from utilizatori where username=? and password=?");
interogare.bindValue(0, fin_user);
interogare.bindValue(1, pass2_sha256);
interogare.exec();

if(interogare.first()){
        success = 1;
        printf("Am ajuns pe ramura success login!\n");

        int wr_ok = write(tdL.cl, &success, sizeof(int));
        if(wr_ok <= 0){
            printf("Thread.. %d ",tdL.idThread);
            qDebug()<<"Server: eroare, nu am putut trimite ok login la client\n";
        }
    }
    else {
         printf("Am ajuns pe ramura esec login!!!\n");
        success = 0;
        int wr_not_ok = write(tdL.cl, &success, sizeof(int));

        if(wr_not_ok <= 0){
            printf("Thread.. %d ",tdL.idThread);
            qDebug()<<"Server: eroare, nu am putut trimite not ok login la client\n";
        }
    }

    return success;
}




int SignUp(struct thData tdL){
    char* fin_user = (char*)malloc(40);
    bzero(fin_user, 40);
    int data_length;

    fflush(stdout);
    if (read (tdL.cl, &data_length, sizeof(int)) <= 0)
    {
        printf("Thread.. %d\n",tdL.idThread);
        qDebug()<<"Server - Eroare, nu am putut citi lungimea datelor de inregistrare de la client\n";
    }

    char* data = (char*) malloc (164);
    fflush (stdout);
    if (read(tdL.cl, data, data_length) <=0)
    {
        printf("[Thread %d]\n",tdL.idThread);
        qDebug()<<"Server - Eroare, nu am putut citi datele de inregistrare de la client\n";
    }

printf("%s\n", data);
qDebug()<<"Server:Am citit toate datele\n";

    QSqlQuery interogare;
    char *tokenize;

    std::string vector[5];

    tokenize = strtok(data, "#");

    int i=0;
    while(tokenize!= NULL){
        vector[i] = tokenize;
         tokenize = strtok(NULL, "#");
        i++;
    }

    char* fin_pass = new char[vector[1].length() + 1];
    char* fin_prenume_client = new char[vector[2].length() + 1];
    char* fin_nume_client = new char[vector[3].length() + 1];

     std::copy(vector[0].begin(), vector[0].end(), fin_user);
     std::copy(vector[1].begin(), vector[1].end(), fin_pass);

     std::copy(vector[2].begin(), vector[2].end(), fin_prenume_client);
     std::copy(vector[3].begin(), vector[3].end(), fin_nume_client);

     fin_user[vector[0].size()] = '\0';
     fin_pass[vector[1].size()] = '\0';
     fin_prenume_client[vector[2].size()] = '\0';
     fin_nume_client[vector[3].size()] = '\0';



    int success = 0;

    std::string pass_sha256;
    pass_sha256 = sha256(fin_pass);
    char* pass2_sha256 = new char[pass_sha256.length() + 1];
    std::copy(pass_sha256.begin(), pass_sha256.end(), pass2_sha256);
    pass2_sha256[pass_sha256.size()]='\0';


qDebug()<<"Server:Am criptat parola\n";


int lg = strlen(pass2_sha256);

    interogare.prepare("select * from utilizatori where username=?");
    interogare.bindValue(0, fin_user);
    interogare.exec();


    if(interogare.first()){
        success = 0;
        printf("User:%s deja existent in baza de date. Alegeti alt user\n ", fin_user);
        int wr_not_ok = write(tdL.cl, &success, sizeof(int));

        if(wr_not_ok <= 0){
            printf("Thread  %d ",tdL.idThread);
            qDebug()<<"Server: eroare, nu am putut trimite not ok sign up la client\n";
        }

    }

    else { //username nou, inseram toate datele in baza de date

        interogare.prepare("insert into utilizatori values (?, ?, ?, ?)");
        interogare.bindValue(0, fin_user);
        interogare.bindValue(1, pass2_sha256);
        interogare.bindValue(2, fin_prenume_client);
        interogare.bindValue(3, fin_nume_client);
        interogare.exec();
        printf("Am adaugat in baza de date user %s, parola %s, prenume %s, nume %s \n", fin_user, pass2_sha256, fin_prenume_client, fin_nume_client);
        success = 1;
        int wr_ok = write(tdL.cl, &success, sizeof(int));
        if(wr_ok <= 0){
            printf("Thread.. %d ",tdL.idThread);
            qDebug()<<"Server: eroare, nu am putut trimite ok sign up la client\n";
        }
        qDebug()<<"Server: am inserat tot\n";
    }
    return success;
}

void ChooseChapter(struct thData tdL, int option){
    QSqlQuery interogare;
    interogare.prepare("select text from cursuri where capitol=?");
    interogare.bindValue(0, option);
    interogare.exec();

    if(interogare.first()){
        int text_length;
        const char* text;
        QString text_qstring = interogare.value(0).toString();
        std::string text_string = text_qstring.toStdString();         //transformare
        text = text_string.c_str();
        text_length = strlen(text);
        int send_text_length = write(tdL.cl, &text_length, sizeof(int));
        if(send_text_length <= 0){
            printf("Thread.. %d ",tdL.idThread);
            qDebug()<<"Server: eroare, nu s-a putut trimite lungimea textului aferent capitolului ales\n";

        }
        int send_text = write(tdL.cl, text, text_length);
        if(send_text <= 0){
            printf("Thread.. %d ",tdL.idThread);
            qDebug()<<"Server: eroare, nu s-a putut trimite textul aferent capitolului ales\n";

        }


    }
}

void SearchWithWords(struct thData tdL){


    //citim de la client ce a tastat in bara de search + lungimea
    int length;
    int recv_length = read(tdL.cl, &length, sizeof(int));
    if(recv_length <= 0){
        qDebug()<<"Server: NU am putut citi de la client lungimea textului de cautat la Search with Words\n";
    }
    char* text_to_find = (char*) malloc(50);;
    int recv_text_to_find = read(tdL.cl, text_to_find, length);
    if(recv_text_to_find <= 0){
        qDebug()<<"Server: NU am putut citi de la client textul de cautat la Search with Words\n";
    }
    text_to_find[length] = '\0';

printf("%s\n",text_to_find);
    int count = 0; //numarul de capitole in care apare textul ce s-a cautat
int numar_aparitii;

    int ch[11], vect[12], x = 0;

    QSqlQuery interogare;
    interogare.prepare("SELECT(LENGTH(text) - LENGTH(REPLACE(text, ?, ''))) / LENGTH(?) as aparitii from cursuri");
    interogare.bindValue(0, text_to_find);
    interogare.bindValue(1, text_to_find);
    interogare.exec();
    while(interogare.next()){
        numar_aparitii = interogare.value(0).toInt();
        ch[x] = numar_aparitii;
        printf("%d\n", numar_aparitii);
        if(numar_aparitii > 0)
        {
            vect[count] = x;
            count++;

        }
         x++;
    }


    int send_nr_cap = write(tdL.cl, &count, sizeof(int));
    if(send_nr_cap <= 0){
        qDebug()<<"Server: NU am putut trimite la client numarul de capitole in care apare textul cautat la Search with Words\n";
    }

         qDebug()<<"Server: Am putut trimite la client numarul de capitole in care apare textul cautat la Search with Words\n";


        for(int j= 0; j < count; j++) {

            int cap = vect[j] + 1;
            int send_capitol = write(tdL.cl, &cap, sizeof(int));
            if(send_capitol <= 0){
                qDebug()<<"Server: NU am putut trimite la client numarul capitolului la Search with Words\n";
            }
            printf("Server loop capitol %d\n", cap);

            qDebug()<<"Server: Am putut trimite la client numarul capitolului la Search with Words\n";
            int send_nr_ap = write(tdL.cl, &ch[vect[j]], sizeof(int));
            if(send_nr_ap <= 0){
                qDebug()<<"Server: NU am putut trimite la client numarul aparitiilor pentru capitol la Search with Words\n";
            }

            printf("Server loop numar aparitii %d\n", ch[vect[j]]);
            qDebug()<<"Server: Am putut trimite la client numarul aparitiilor pentru capitol la Search with Words\n";

        }


    }


void Discussions(struct thData tdL, int chapter){
    QSqlQuery interogare;
    const char* user;
    const char* postare;
    int nr_postari=0;
    interogare.prepare("select username from discutii where capitol = ?");
    interogare.bindValue(0, chapter);
    interogare.exec();

    //trebuie sa aflam numarul de postari aferente capitolului ales

    while (interogare.next()){
        nr_postari = nr_postari + 1;
    }

    int send_nr_postari = write(tdL.cl, &nr_postari, sizeof(int));
    if(send_nr_postari <= 0){
        qDebug()<<"Server: nu am putut trimite numarul de postari de la capitolul ales\n";
    }


 printf("Nr postari %d\n", nr_postari);
    interogare.prepare("select username, post from discutii where capitol = ?");
    interogare.bindValue(0, chapter);
   //interogare.setForwardOnly(true);
    interogare.exec();

    for(int post = 0; post < nr_postari; post++){
    interogare.next();


        QString u = interogare.value("username").toString();

        std::string user2 = u.toStdString();
        user = user2.c_str();
        int lg_user = strlen(user);
        //pentru fiecare postare selectam si trimitem username, respectiv text +lungimea pentru fiecare
        int send_user_lg = write(tdL.cl, &lg_user, sizeof(int));
        if(send_user_lg <= 0){
             qDebug()<<"Server: nu am putut trimite lungimea numelui user-ului care a trimis mesaj la capitolul ales\n";
         }
         int send_user = write(tdL.cl, user, lg_user);
         if(send_user <= 0){
              qDebug()<<"Server: nu am putut trimite numele user-ului care a trimis mesaj la capitolul ales\n";
          }
 printf("User %s\n", user);


         QString post_str = interogare.value("post").toString();
         std::string post_1 = post_str.toStdString();
         postare = post_1.c_str();
         int lg_postare = strlen(postare);
         int send_post_lg = write(tdL.cl, &lg_postare, sizeof(int));
         if(send_post_lg <= 0){
              qDebug()<<"Server: nu am putut trimite lungimea mesajului la capitolul ales\n";
          }
          int send_post = write(tdL.cl, postare, lg_postare);
          if(send_post <= 0){
               qDebug()<<"Server: nu am putut trimite mesajul de la capitolul ales\n";
           }
           printf("Mesaj %s\n", postare);

}
}

void PostOnDiscussions(struct thData tdL, int chapter){
    int post_lg = 0, user_lg;
    QSqlQuery interogare;
    char* post = (char*) malloc(250);
    char* username_gen = (char*) malloc(40);

    int send_user_lg = read(tdL.cl, &user_lg, sizeof(int));
    if(send_user_lg <= 0){
         qDebug()<<"Server: nu am primit lungimea username ului la capitolul ales\n";
     }

        int send_user = read(tdL.cl, username_gen, user_lg);
        if(send_user <= 0){
            qDebug()<<"Server: nu am primit mesajul de la capitolul ales\n";
        }
        username_gen[user_lg] = '\0';


    int send_post_lg = read(tdL.cl, &post_lg, sizeof(int));
    if(send_post_lg <= 0){
         qDebug()<<"Server: nu am primit lungimea mesajului la capitolul ales\n";
     }
    if(post_lg > 0){
        int send_post = read(tdL.cl, post, post_lg);
        if(send_post <= 0){
            qDebug()<<"Server: nu am primit mesajul de la capitolul ales\n";
        }
        post[post_lg] = '\0';

        interogare.prepare("insert into discutii values (?,?,?)");
        interogare.bindValue(0,chapter);
        interogare.bindValue(1, username_gen);
        interogare.bindValue(2, post);
        interogare.exec();
    }
}

void AllUsernames(struct thData tdL){
    QSqlQuery interogare;
    //alegem toti utilizatorii in afara clientului care e deja conectat, aflam numarul lor
    int numar_utilizatori = 0;
    int user_lg;
    char* username_gen = (char*) malloc(40);

    int send_user_lg = read(tdL.cl, &user_lg, sizeof(int));
    if(send_user_lg <= 0){
         qDebug()<<"Server: nu am primit lungimea username ului la capitolul ales\n";
     }

        int send_user = read(tdL.cl, username_gen, user_lg);
        if(send_user <= 0){
            qDebug()<<"Server: nu am primit mesajul de la capitolul ales\n";
        }
        username_gen[user_lg] = '\0';

    interogare.prepare("select username from utilizatori where username != ?");
    interogare.bindValue(0, username_gen);
    interogare.exec();
    while(interogare.next()) numar_utilizatori++;

    int send_nr = write(tdL.cl, &numar_utilizatori, sizeof (int));
    if(send_nr <= 0){
        qDebug()<<"Server: nu am trimis numarul total de users\n";
    }


    interogare.prepare("select username from utilizatori where username != ?");
    interogare.bindValue(0, username_gen);
    interogare.exec();

        for(int count = 0; count < numar_utilizatori; count++){
            interogare.next();
            const char* username;
            int lg_username;
            QString qs_username = interogare.value(0).toString();
            std::string s_username = qs_username.toStdString();
            username = s_username.c_str();
            lg_username = strlen(username);
            int send_lg_u = write(tdL.cl, &lg_username, sizeof(int));
            if(send_lg_u <= 0){
                qDebug()<<"server: nu am putut trimite lungimea username- ului la client\n";
            }
            int send_u = write(tdL.cl, username, lg_username);
            if(send_u <= 0){
                qDebug()<<"server: nu am putut trimite username- ul la client\n";
            }


        }

    }

void AllFriends(struct thData tdL){

    int user_lg;
    char* username_gen = (char*) malloc(40);

    int send_user_lg = read(tdL.cl, &user_lg, sizeof(int));
    if(send_user_lg <= 0){
         qDebug()<<"Server: nu am primit lungimea username ului la capitolul ales\n";
     }

        int send_user = read(tdL.cl, username_gen, user_lg);
        if(send_user <= 0){
            qDebug()<<"Server: nu am primit user de la capitolul ales\n";
        }
        username_gen[user_lg] = '\0';

    QSqlQuery interogare;
    int numar_prieteni = 0;
    interogare.prepare("select user2 from prietenii where user1=? intersect select user1 from prietenii where user2=?");
    interogare.bindValue(0,username_gen);
    interogare.bindValue(1,username_gen);
    interogare.exec();
    while(interogare.next()) numar_prieteni++;

    int send_nr_friends = write(tdL.cl, &numar_prieteni, sizeof(int));
    if(send_nr_friends <= 0)
        qDebug()<<"server: nu am trimis numarul de prieteni la client\n";

    interogare.prepare("select user2 from prietenii where user1=? intersect select user1 from prietenii where user2=?");
    interogare.bindValue(0, username_gen);
    interogare.bindValue(1,username_gen);
    interogare.exec();
    for(int i=0; i< numar_prieteni; i++){
        interogare.next();
        const char* username;
        int lg_username;
        QString qs_username = interogare.value(0).toString();
        std::string s_username = qs_username.toStdString();
        username = s_username.c_str();
        lg_username = strlen(username);
        int send_lg_u = write(tdL.cl, &lg_username, sizeof(int));
        if(send_lg_u <= 0){
            qDebug()<<"server: nu am putut trimite lungimea username- ului la client\n";
        }
        int send_u = write(tdL.cl, username, lg_username);
        if(send_u <= 0){
            qDebug()<<"server: nu am putut trimite username- ul la client\n";
        }

    }

}

int send_friend_request(struct thData tdL){
    QSqlQuery interogare, interogare2;
    int answer = 0;
    char* username = (char*) malloc(40);
    int lg_username;
    int user_lg;
    char* username_gen = (char*) malloc(40);

    int send_user_lg = read(tdL.cl, &user_lg, sizeof(int));
    if(send_user_lg <= 0){
         qDebug()<<"Server: nu am primit lungimea username ului \n";
     }

        int send_user = read(tdL.cl, username_gen, user_lg);
        if(send_user <= 0){
            qDebug()<<"Server: nu am primit username ul\n";
        }
        username_gen[user_lg] = '\0';
        int read_lg = read(tdL.cl, &lg_username, sizeof (int));
                if(read_lg <= 0){
                    printf("Thread %d\n",tdL.idThread);
                    perror("Server: eroare, nu am putut citi de la client lungimea username-ului pentru friend_request\n");

                }
                fflush(stdout);
                int read_user = read(tdL.cl, username, lg_username);
                if(read_user <= 0){
                    printf("Thread %d\n",tdL.idThread);
                    perror("Server: eroare, nu am putut citi de la client username-ul pentru friend_request\n");

                }
                username[lg_username] = '\0';
                fflush(stdout);
                if(!strcmp(username, username_gen)){
                    answer = -1; //cazul in care clientul si-a scris propriul username
                    int send_answer = write(tdL.cl, &answer, sizeof (int));
                    if(send_answer <= 0){
                        printf("Thread  %d\n",tdL.idThread);
                        perror("Server: eroare, nu am putut trimite la client raspunsul: -1 - same username as yours pentru friend_request\n");

                    }
                    return answer;

                }
                else //username-ul tastat de client este diferit de al lui
                {
                    interogare.prepare("select username from utilizatori where username = ?");
                    interogare.bindValue(0,username);
                    interogare.exec();
                    if(interogare.first()){ //cazul in care am gasit username-ul tastat de client in tabela generala cu utilizatori
                         QSqlQuery check_duplicate;
                         check_duplicate.prepare("select * from prietenii where user1 = ? and user2 = ?");
                         check_duplicate.bindValue(0, username_gen);
                         check_duplicate.bindValue(1, username);
                         check_duplicate.exec();
                         if(check_duplicate.first()){ //cazul in care am gasit deja cererea in tabel
                             answer = -5;
                             interogare2.prepare("select * from prietenii where user1 = ? and user2 = ?"); //verif daca exista si invers
                             interogare2.bindValue(0, username);
                             interogare2.bindValue(1, username_gen);
                             interogare2.exec();
                             if(interogare2.first()){
                                 answer = -10;
                             }
                             int send_answer = write(tdL.cl, &answer, sizeof (int));
                             if(send_answer <= 0){
                                 printf("Thread  %d\n",tdL.idThread);
                                 perror("Server: eroare, nu am putut trimite la client raspunsul: -5/-10 - you have already sent a friend request to this user/user already a friend\n");

                             }
                             return answer;

                         }
                         else //nu am gasit cererea in tabel, dar prietenul cerut exista
                         {
                             answer = 1;
                             QSqlQuery insert;
                             insert.prepare("insert into prietenii values (?, ?)");
                             insert.bindValue(0, username_gen);
                             insert.bindValue(1, username);
                             insert.exec();
                             int send_answer = write(tdL.cl, &answer, sizeof (int));
                             if(send_answer <= 0){
                                 printf("Thread %d\n",tdL.idThread);
                                 perror("Server: eroare, nu am putut trimite la client raspunsul: am inserat in tabela de prietenii\n");
                             }
                             return answer;

                         }
                    }
                    else //user inexistent
                    {
                        answer = 0;
                        //nu am gasit textul tastat de user in lista de usernames
                        int send_err = write(tdL.cl, &answer, sizeof(int));
                        if(send_err <= 0){
                           perror("Server: eroare, nu am putut trimite la client raspunsul 0: wrong username\n");
                        }

                        return answer;

                    }
                }
             return answer;

}

int main (){

 //Credit pentru partea de server TCP concurent cu thread-uri : Lenuta Alboaie


  struct sockaddr_in server;	// structura folosita de server
  struct sockaddr_in from;
 // int nr;		//mesajul primit de trimis la client
  int sd;		//descriptorul de socket
//  int pid;
  pthread_t th[100];    //Identificatorii thread-urilor care se vor crea
    int i=0;


  /* crearea unui socket */
  if ((sd = socket (AF_INET, SOCK_STREAM, 0)) == -1)
    {
      perror ("[server]Eroare la socket().\n");
      return errno;
    }
  /* utilizarea optiunii SO_REUSEADDR */
  int on=1;
  setsockopt(sd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on));

  /* pregatirea structurilor de date */
  bzero (&server, sizeof (server));
  bzero (&from, sizeof (from));

  /* umplem structura folosita de server */
  /* stabilirea familiei de socket-uri */
    server.sin_family = AF_INET;
  /* acceptam orice adresa */
    server.sin_addr.s_addr = htonl (INADDR_ANY);
  /* utilizam un port utilizator */
    server.sin_port = htons (PORT);

    /* atasam socketul */
    if (bind (sd, (struct sockaddr *) &server, sizeof (struct sockaddr)) == -1)
      {
        perror ("[server]Eroare la bind().\n");
        return errno;
      }
    // conectare la baza de date  si deschidere

    Database = QSqlDatabase::addDatabase("QSQLITE");   // vom lucra cu baza de date SQLite Learnet
    Database.setDatabaseName("/home/malina/Learnet/Learnet.db");


    if (!Database.open())
    {
       qDebug()<<"Eroare - nu s-a putut deschide baza de date\n";
//        QString s = Database.lastError().text();
//        std::string s1 = s.toStdString();
//        const char* err = s1.c_str();
//        printf("%s\n", err);
//        return 0;
    }
    else
    {
        printf("Succes: Baza de date LearNet.db a fost deschisa..");
    }



  /* punem serverul sa asculte daca vin clienti sa se conecteze */
    if (listen(sd, 2) == -1)
      {
        perror ("[server]Eroare la listen().\n");
        return errno;
      }
  /* servim in mod concurent clientii...folosind thread-uri */
  while (1)
    {
      int client;
      thData * td; //parametru functia executata de thread
      socklen_t length = sizeof (from);

      printf ("[server]Asteptam la portul %d...\n",PORT);
      fflush (stdout);

      // client= malloc(sizeof(int));
      /* acceptam un client (stare blocanta pina la realizarea conexiunii) */
      if ( (client = accept (sd, (struct sockaddr *) &from, &length)) < 0)
    {
      perror ("[server]Eroare la accept().\n");
      continue;
    }


    td=(struct thData*)malloc(sizeof(struct thData));
    td->idThread=i++;
    td->cl=client;

    pthread_create(&th[i], NULL, &treat, td);

    }//while
  Database.close();

};

static void *treat(void * arg)
{
struct thData tdL;
        tdL= *((struct thData*)arg);
        printf ("[thread]- %d - Asteptam mesajul...\n", tdL.idThread);
        fflush (stdout);
        pthread_detach(pthread_self());
        raspunde((struct thData*)arg);
        /* am terminat cu acest client, inchidem conexiunea */
        close ((intptr_t)arg);
        return(NULL);

};



void raspunde(void *arg)
{
    int result, ok2 = 0;
    struct thData tdL;
    tdL= *((struct thData*)arg);

        int ok=1;
        while(ok == 1){
            int old_or_new_user = 0, logged = 0;
               //  0 --> LOGIN  1-->SIGN UP
            while(logged == 0) //cat timp userul nu s-a logat: cerem de la client optiunea: login sau signup?/
            {
                int answer = read(tdL.cl, &old_or_new_user, sizeof(int));  //read de la client raspunsul: un integer

                //tratare caz eroare read
                if(answer <= 0){
                    printf("[Thread %d]\n",tdL.idThread);
                    qDebug()<<"Server: eroare, nu am putut citi de la client raspunsul: login/signup\n";
                }

                if(old_or_new_user == 0) //old
                {     result = Login(tdL);  //apelam functia de login, care va trimite 1 in caz de succes
                    if(result == 1) logged = 1;
                }
                else
                    //altfel, optiunea este de sign up
                {
                    result = SignUp(tdL); //apelam functia de SignUp, care va trimite 1 in caz de succes
                    if(result == 1) logged = 1;
                }
            } //end while logged == 0

            ok2=1;
            int option;
            while(ok2 == 1){
                //second while loop, after successful login/sign up


                int receive = read(tdL.cl, &option, sizeof(int));
                if(receive <= 0){
                    qDebug()<<"Server:Nu am putut citi de la client numarul aferent optiunii alese din meniu\n";

                }

                if(option == 1)
                {
                    qDebug()<<"Server: Am primit optiunea 1 - ChooseChapter\n";


                        int capitol;
                        int recv_capitol = read(tdL.cl, &capitol, sizeof(int));
                        if(recv_capitol <= 0){
                        qDebug()<<"Server:Nu am putut citi de la client numarul aferent capitolului\n";
                        }
                    ChooseChapter(tdL, capitol);
                }



                    if(option == 2){
                       qDebug()<<"Server: Am primit optiunea 2 - Search with Words\n";
                       SearchWithWords(tdL);

                 }
                    if(option == 3){
                        qDebug()<<"Server: Am primit optiunea 3 - See discussions \n";
                        int capitol;
                        int recv_capitol = read(tdL.cl, &capitol, sizeof(int));
                        if(recv_capitol <= 0){
                        qDebug()<<"Server:Nu am putut citi de la client numarul aferent capitolului\n";
                        }
                        printf("Capitol %d\n", capitol);

                        Discussions(tdL, capitol);
                    }
                    if(option == 4){
                         qDebug()<<"Server: Am primit optiunea 4 - Post on discussions\n";
                         int capitol;
                         int recv_capitol = read(tdL.cl, &capitol, sizeof(int));
                         if(recv_capitol <= 0){
                         qDebug()<<"Server:Nu am putut citi de la client numarul aferent capitolului\n";
                         }
                         printf("Capitol %d\n", capitol);
                         PostOnDiscussions(tdL, capitol);
                    }
                    if(option == 5){
                        int exit;
                        int recv_exit = read(tdL.cl, &exit, sizeof(int));
                        if(recv_exit <= 0)  qDebug()<<"Server:Nu am putut citi de la client optiunea de exit - 5 \n";
                        ok = 0;
                    }
                    if(option == 6){
                        int so;
                        int recv_so = read(tdL.cl, &so, sizeof(int));
                        if(recv_so <= 0)  qDebug()<<"Server:Nu am putut citi de la client optiunea de sign out - 6 \n";
                        ok2 = 0;
                    }
                    if(option == 7){


                        qDebug()<<"Server:Userul a ales sa vada lista userilor - 7 \n";
                        AllUsernames(tdL);
                    }
                    if(option == 8){


                        qDebug()<<"Server:Userul a ales sa vada lista prietenilor - 8 \n";
                        AllFriends(tdL);
                    }
                    if(option == 9){
                        qDebug()<<"Server:Userul a ales sa trimita o cerere de prietenie - 9 \n";
                        send_friend_request(tdL);
                    }


                }



            }


        } //end while ok == 1
        //ok =0;

