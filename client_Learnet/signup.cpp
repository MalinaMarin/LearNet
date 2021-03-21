#include "signup.h"
#include "ui_signup.h"
#include <string.h>
#include <string>
#include<QString>
#include <mainwindow.h>
#include "utilities.h"
#include "mainmenu.h"
#include "login_signup.h"
signup::signup(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::signup)
{
    ui->setupUi(this);
    QPixmap pic2("/home/malina/Learnet/pic2.jpg");
    ui->pic->setPixmap(pic2);
//    int l1 = ui->pic->width();
//    int l2 = ui->pic->height();
//    ui->pic->setPixmap(pic2.scaled(l1,l2, Qt::KeepAspectRatio));

    ui->pic->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );
    ui->message->setText("");
}

signup::~signup()
{
    delete ui;
}

void signup::on_pushButton_clicked()
{
    int user_length, pass_length, name_length, surname_length;
    char username1[40], password1[40], prenume1[40], nume1[40];


    QString user = ui->lineEdit->text();
    strcpy(username1, user.toLocal8Bit().data());

    QString pass = ui->lineEdit_2->text();
    strcpy(password1, pass.toLocal8Bit().data());

    QString name = ui->lineEdit_3->text();
    strcpy(prenume1, name.toLocal8Bit().data());

    QString surname = ui->lineEdit_4->text();
    strcpy(nume1, surname.toLocal8Bit().data());

    user_length = strlen(username1);
    pass_length=strlen(password1);
    name_length = strlen(prenume1);
    surname_length = strlen(nume1);

    strcpy(username_gen, username1);

    int data_length;
    char* data = (char*) malloc(164);

    if(user_length == 0 || pass_length == 0 || name_length == 0 || surname_length == 0)
    {
        ui->message->setText("You have to give information for every field");

    }
    else
    {
        data_length = user_length + pass_length + name_length + surname_length + 4;
        strcpy(data, username1);
        strcat(data, "#");
        strcat(data, password1);
        strcat(data, "#");
        strcat(data, prenume1);
        strcat(data, "#");
        strcat(data, nume1);
        strcat(data, "#");

        int option_Login_Signup = 1;

        int send_opt = write(sd, &option_Login_Signup, sizeof(int));
        if (send_opt <= 0) {
            qDebug()<<"Client - eroare, nu am putut trimite optiunea de sign up la server..\n";
        }
        fflush(stdout);
        int send_data_lg = write(sd, &data_length, sizeof(int));
        if ( send_data_lg <= 0) {
            qDebug()<<"Client - eroare, nu am trimis lungimea informatiilor de sign up la server\n";
        }
        fflush(stdout);
        int send_data = write(sd, data, data_length);
        if (send_data <= 0) {
            qDebug()<<"Client - Eroare, nu am trimis informatiile de sign up la server\n";
        }
        int raspuns;
        int read_rasp = read(sd, &raspuns, sizeof(int));
        if(read_rasp <= 0){
            qDebug()<<"Client: Eroare, nu am primit de la server raspuns in legatura cu datele de inregistrare(final functie signup client)\n";
        }

        fflush(stdout);
        qDebug()<<"Am primit raspuns\n";
        if(raspuns == 0)
        {
            ui->message->setText("Error, username already in use");

        }
       else //succes la sign up
        {
            hide();
            MainMenu menu;
            menu.setModal(true);
            menu.exec();
        }
    }

}

void signup::on_pushButton_2_clicked()
{
    hide();
    login_signup a;
    a.setModal(true);
    a.exec();
}
