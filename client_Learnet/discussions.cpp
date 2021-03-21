#include "discussions.h"
#include "ui_discussions.h"
#include "utilities.h"
#include "mainmenu.h"
int chapter;

void discussions::Action(int chapter){
    int option = 3;
    int send_3 = write(sd, &option, sizeof(int));
    if(send_3 <= 0){
        qDebug()<<"Client: nu am putut trimite optiunea 3 see discussions la server\n";
    }

    if (write(sd, &chapter, sizeof(int)) <= 0) {
        qDebug()<<"Client: eroare, nu am putut trimite serverului numarul capitolului.\n";
    }
ui->textBrowser->setText("");
    int lg_user, lg_post;
    char* user =(char*)malloc(40);
    char* post =(char*)malloc(250);
    int nr_postari;

    //citim de la server numarul de mesaje aferente topicului
    int read_nr_post = read (sd, &nr_postari,sizeof(int));
    if ( read_nr_post <= 0) {
        qDebug()<<"client: nu am primit de la server numarul de postari ale capitolului ales la combo box\n";
    }

    if(nr_postari > 0){

    for(int i=0; i<nr_postari; i++)
    {
        int read_lg_user = read (sd, &lg_user,sizeof(int));

        if (read_lg_user <= 0) {
            qDebug()<<"client: nu am putut citi lungimea username ului care a postat la capitolul selectat\n";
        }

        int read_user = read (sd, user, lg_user);
        if (read_user <= 0) {
            qDebug()<<"client nu am putut citi userul \n";
        }

        user[lg_user]= '\0';
        strcat(user, ":");
        ui->textBrowser->append("___________");
        ui->textBrowser->append(user);
        printf("%s\n", user);
        int read_lg_post = read (sd, &lg_post,sizeof(int));
        if ( read_lg_post <= 0) {
            qDebug()<<"Client nu am putut citi lungimea postarii\n";
        }
        int read_post = read (sd, post ,lg_post);
        if (read_post <= 0) {
            qDebug()<<"Client nu am putut citi postarea\n";
        }

        post[lg_post]='\0';

         ui->textBrowser->append(post);


        }
    }
    else
        if(nr_postari == 0)  ui->textBrowser->setText("");
}

discussions::discussions(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::discussions)
{
    ui->setupUi(this);
    QPixmap pic1("/home/malina/Learnet/pic1.jpg");
    ui->label_pic1->setPixmap(pic1);
    //int l1 = ui->label_pic1->width();
   // int l2 = ui->label_pic1->height();
  // ui->label_pic1->setPixmap(pic1.scaled(l1,l2, Qt::KeepAspectRatio));

   ui->label_pic1->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );


}

discussions::~discussions()
{
    delete ui;
}

void discussions::on_back_clicked()
{
    hide();
    MainMenu mainmenu;
    mainmenu.exec();

}

void discussions::on_post_clicked()
{

    int option = 4;
    int send_4 = write(sd, &option, sizeof(int));
    if(send_4 <= 0){
        qDebug()<<"Client: nu am putut trimite optiunea 4 send post la server\n";
    }
    printf("click post - optiune %d\n", option);

    if (write(sd, &chapter, sizeof(int)) <= 0) {
        qDebug()<<"Client: eroare, nu am putut trimite serverului numarul capitolului.\n";
    }
         int post_lg;
         const char* post;
         QString qpost = ui->lineEdit->text();
         post = qpost.toStdString().c_str();
         post_lg = strlen(post);
         int lg_user = strlen(username_gen);

         int recv_user_lg = write(sd, &lg_user, sizeof(int));
         if(recv_user_lg <= 0){
             qDebug()<<"Client: nu am trimis lungimea username ului \n";
         }


         int recv_user = write(sd, username_gen, lg_user);
         if(recv_user <= 0){
             qDebug()<<"Client: nu am trimis username ul\n";
         }


         int recv_post_lg = write(sd, &post_lg, sizeof(int));
         if(recv_post_lg <= 0){
             qDebug()<<"Client: nu am trimis lungimea mesajului la capitolul ales\n";
         }


         if(post_lg > 0){
         int recv_post = write(sd, post, post_lg);
         if(recv_post <= 0){
             qDebug()<<"Client: nu am trimis mesajul de la capitolul ales\n";
         }

    }
}

void discussions::on_pushButton_clicked()
{
    chapter = 1;
    Action(chapter);
}


void discussions::on_pushButton_2_clicked()
{
    chapter = 2;
    Action(chapter);
}

void discussions::on_pushButton_3_clicked()
{
    chapter = 3;
    Action(chapter);
}

void discussions::on_pushButton_4_clicked()
{
    chapter = 4;
    Action(chapter);
}

void discussions::on_pushButton_5_clicked()
{
    chapter = 5;
    Action(chapter);
}

void discussions::on_pushButton_6_clicked()
{
    chapter = 6;
    Action(chapter);
}

void discussions::on_pushButton_7_clicked()
{
    chapter = 7;
    Action(chapter);
}

void discussions::on_pushButton_8_clicked()
{
    chapter = 8;
    Action(chapter);
}

void discussions::on_pushButton_9_clicked()
{
    chapter = 9;
   Action(chapter);
}

void discussions::on_pushButton_10_clicked()
{
    chapter = 10;
    Action(chapter);
}

void discussions::on_pushButton_11_clicked()
{
    chapter = 11;
   Action(chapter);
}
