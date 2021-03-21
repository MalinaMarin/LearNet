#include "friend_request.h"
#include "ui_friend_request.h"
#include "utilities.h"
#include "mainmenu.h"
friend_request::friend_request(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::friend_request)
{
    ui->setupUi(this);
    QPixmap pic1("/home/malina/Learnet/pic1.jpg");
    ui->label_pic1->setPixmap(pic1);

    //int l1 = ui->label_pic1->width();
   // int l2 = ui->label_pic1->height();
  // ui->label_pic1->setPixmap(pic1.scaled(l1,l2, Qt::KeepAspectRatio));

   ui->label_pic1->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );
     ui->textBrowser->setText("");
      ui->textBrowser_2->setText("");
      ui->label->setText("");
}

friend_request::~friend_request()
{
    delete ui;
}

void friend_request::on_users_clicked()
{
ui->textBrowser->setText("");
    int option = 7;
    int send_7 = write(sd, &option, sizeof(int));
    if(send_7 <= 0){
        qDebug()<<"Client: nu am putut trimite optiunea 7 see all users la server\n";
    }

    int lg;
    char* username=(char*)malloc(40);
    int nr;
    int lg_user = strlen(username_gen);

     int recv_user_lg = write(sd, &lg_user, sizeof(int));
     if(recv_user_lg <= 0){
          qDebug()<<"Client: nu am trimis lungimea username ului \n";
      }


     int recv_user = write(sd, username_gen, lg_user);
      if(recv_user <= 0){
           qDebug()<<"Client: nu am trimis username ul\n";
       }
    int read_nr_users = read (sd, &nr,sizeof(int));
    if ( read_nr_users <= 0) {
        qDebug()<<"client nu am citit nr useri\n";
    }

    for(int i=0; i<nr; i++)
    {
        int read_lg_user = read(sd, &lg, sizeof(int));
        if ( read_lg_user<= 0) {
            qDebug()<<"client nu am citit lungime user\n";
        }
        fflush(stdout);
        strcpy(username, "");
        int read_user = read(sd, username,lg);
        if (read_user <= 0) {
            qDebug()<<"client nu am putut citi user\n";
        }
        fflush(stdout);
        username[lg]='\0';
        ui->textBrowser->append(username);
    }
}


void friend_request::on_friends_clicked()
{
    ui->textBrowser_2->setText("");
    int option = 8;
        int send_8 = write(sd, &option, sizeof(int));
        if(send_8 <= 0){
            qDebug()<<"Client: nu am putut trimite optiunea 8 see my friends la server\n";
        }

        int lg;
        char* username=(char*)malloc(40);
        int nr;

        int lg_user = strlen(username_gen);

         int recv_user_lg = write(sd, &lg_user, sizeof(int));
         if(recv_user_lg <= 0){
              qDebug()<<"Client: nu am trimis lungimea username ului \n";
          }


         int recv_user = write(sd, username_gen, lg_user);
          if(recv_user <= 0){
               qDebug()<<"Client: nu am trimis username ul\n";
           }
          int read_nr_users = read (sd, &nr,sizeof(int));
          if ( read_nr_users <= 0) {
              qDebug()<<"client nu am citit nr prieteni\n";
          }

          for(int i=0; i<nr; i++)
          {
              int read_lg_user = read(sd, &lg, sizeof(int));
              if ( read_lg_user<= 0) {
                  qDebug()<<"client nu am citit lungime user\n";
              }
              fflush(stdout);
              strcpy(username, "");
              int read_user = read(sd, username,lg);
              if (read_user <= 0) {
                  qDebug()<<"client nu am putut citi user\n";
              }
              fflush(stdout);
              username[lg]='\0';
            ui->textBrowser_2->append(username);
        }
}


void friend_request::on_pushButton_clicked()
{
    QString user = ui->lineEdit->text();
    const char* username;
    username= user.toStdString().c_str();
    int option = 9, lg_username;
    lg_username = strlen(username);

    if(!strlen(username)){
        ui->label->setText("You need to type a username");
    }
    else
    {
        int send_9 = write(sd, &option, sizeof(int));
        if(send_9 <= 0){
            qDebug()<<"Client: nu am putut trimite optiunea 9 - send friend request la server\n";
        }
        int lg_user = strlen(username_gen);

         int recv_user_lg = write(sd, &lg_user, sizeof(int));
         if(recv_user_lg <= 0){
              qDebug()<<"Client: nu am trimis lungimea username ului \n";
          }


         int recv_user = write(sd, username_gen, lg_user);
          if(recv_user <= 0){
               qDebug()<<"Client: nu am trimis username ul\n";
           }

        int send_lg = write(sd, &lg_username, sizeof (int));
        if(send_lg <= 0){

            qDebug()<<"Cient: eroare, nu am putut trimite lungimea username-ului pentru friend_request\n";

        }

        int send_user = write(sd, username, lg_username);
        if(send_user <= 0){
            qDebug()<<"client: eroare, nu am putut trimite username-ul pentru friend_request\n";

        }
        fflush(stdout);
        int answer;
        if (read (sd, &answer, sizeof(int)) <= 0) {
            qDebug()<<"client- nu am citit raspuns de la server\n";
        }
        if(answer == 1){
            ui->label->setText("You sent a friend request!");
        }
        else
            if(answer == -5){
                ui->label->setText("You have already sent a friend request to this user.");
            }
            else
                if(answer == -10){
                    ui->label->setText("This user is already your friend.");
                }
                 else
                    if(answer == 0){
                        ui->label->setText("Inexistent user.");
                    }
                         else
                                if(answer == -1){
                                    ui->label->setText("This is your own username.");
                                }




    }



}

void friend_request::on_pushButton_2_clicked()
{
    hide();
    MainMenu mainmenu;
    mainmenu.exec();

}
