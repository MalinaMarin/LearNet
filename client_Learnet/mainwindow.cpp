#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "login_signup.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QPixmap pic1("/home/malina/Learnet/pic1.jpg");
    ui->label_pic1->setPixmap(pic1);
    //int l1 = ui->label_pic1->width();
   // int l2 = ui->label_pic1->height();
  // ui->label_pic1->setPixmap(pic1.scaled(l1,l2, Qt::KeepAspectRatio));

   ui->label_pic1->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );


}


MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    hide();
    login_signup login_signup;
    login_signup.setModal(true);
    login_signup.exec();

}
