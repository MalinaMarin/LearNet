#include "login_signup.h"
#include "ui_login_signup.h"
#include <string.h>
#include <string>
#include<QString>
#include <mainwindow.h>
#include "utilities.h"
#include "signup.h"
#include "mainmenu.h"
char username_gen[40];
login_signup::login_signup(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::login_signup)
{
    ui->setupUi(this);
    QPixmap pic2("/home/malina/Learnet/pic2.jpg");
//    ui->label_pic2->setPixmap(pic2);
//    int l1 = ui->label_pic2->width();
//    int l2 = ui->label_pic2->height();
    ui->label_pic2->setPixmap(pic2);

  ui->label_pic2->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );
    ui->answer->setText("");


}

login_signup::~login_signup()
{
    delete ui;
}

void login_signup::on_login_button_clicked()
{

    char user[40], pass[40];

    QString u = ui->username_line->text();
    strcpy(user, u.toLocal8Bit().data());
    QString p = ui->password_line->text();
    strcpy(pass, p.toLocal8Bit().data());

    int data_length;
    char* data = (char*)malloc(82);
    //tratare cazuri in care lipseste username/password... sau ambele
    if(strlen(user) == 0 && strlen(pass) > 0)
    {
        ui->answer->setText("You didn't type your username.");
    }
    else
        if(strlen(user) > 0 && strlen(pass) == 0)
        {
            ui->answer->setText("You didn't type your password.");
        }
    else
        if(strlen(user) == 0 && strlen(pass) == 0)
        {
            ui->answer->setText("You didn't type anything.");

        }
    else  //cazul in care am introdus si username, si password
        {
            int raspuns;

            data_length = strlen(user) + strlen(pass) + 2;
            strcpy(username_gen, user);
            strcpy(data, user);
            strcat(data, "#");
            strcat(data, pass);
            strcat(data, "#");

            int option_Login_Signup = 0; //0-->login
            int send_opt = write(sd, &option_Login_Signup, sizeof(int));
            if(send_opt <= 0 ) qDebug()<<"Client: Eroare, nu s-a putut trimite la server optiunea de logare \n";

             fflush(stdout);

            int send_data_length = write(sd, &data_length, sizeof(int));
            if(send_data_length <= 0) qDebug()<<"Client: eroare, nu s-a putut trimite la server lungimea datelor de logare\n";

             fflush(stdout);

            int send_data = write(sd, data, data_length );
            if(send_data <= 0) qDebug()<<"Client: eroare, nu s-au putut trimite la server datele de logare\n";

            int receive;
            receive = read(sd, &raspuns, sizeof(int));
            if(receive <= 0) qDebug()<<"Client: Eroare, nu am primit de la server raspuns in legatura cu datele de logare\n";

             fflush(stdout);


             if(raspuns == 0)
            {
                ui->answer->setText("Error, invalid username or password.");

            }
            else
            {
                hide();
                MainMenu menu;
                menu.setModal(true);
                menu.exec();
            }

        }



}

void login_signup::on_signup_button_clicked()
{
    hide();
    signup sign_up;
    sign_up.setModal(true);
    sign_up.exec();


}

