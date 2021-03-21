#include "signout_exit.h"
#include "ui_signout_exit.h"
#include "mainmenu.h"
#include "utilities.h"
#include "login_signup.h"
signout_exit::signout_exit(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::signout_exit)
{
    ui->setupUi(this);
    QPixmap pic1("/home/malina/Learnet/pic1.jpg");
    ui->label_pic1->setPixmap(pic1);
    //int l1 = ui->label_pic1->width();
   // int l2 = ui->label_pic1->height();
  // ui->label_pic1->setPixmap(pic1.scaled(l1,l2, Qt::KeepAspectRatio));

   ui->label_pic1->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );
}

signout_exit::~signout_exit()
{
    delete ui;
}

void signout_exit::on_pushButton_2_clicked()
{
    int exit = 5;
    int send_exit = write(sd, &exit, sizeof(int));
    if(send_exit <= 0){
        qDebug()<<"Client - nu am putut trimite la server optiunea de exit - 5\n";
    }
    hide();

}

void signout_exit::on_pushButton_clicked()
{
    int so = 6;
    int send_so = write(sd, &so, sizeof(int));
    if(send_so <= 0){
        qDebug()<<"Client - nu am putut trimite la server optiunea de sign out - 6\n";
    }
    hide();
    login_signup a;
    a.exec();
}


void signout_exit::on_pushButton_3_clicked() //back to menu
{
    hide();
    MainMenu mainmenu;
    mainmenu.exec();
}
