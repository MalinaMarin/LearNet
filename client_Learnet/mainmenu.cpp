#include "mainmenu.h"
#include "ui_mainmenu.h"
#include "choosechapter.h"
#include "utilities.h"
#include"searchwithwords.h"
#include "discussions.h"
#include <QMessageBox>
#include "signout_exit.h"
#include "friend_request.h"
MainMenu::MainMenu(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::MainMenu)
{

    ui->setupUi(this);
    QPixmap pic3("/home/malina/Learnet/pic3.png");
//    ui->label_pic2->setPixmap(pic2);
//    int l1 = ui->label_pic2->width();
//    int l2 = ui->label_pic2->height();
    ui->label_pic3->setPixmap(pic3);
    ui->label_pic3->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );
    QPalette sample_palette;
   // sample_palette.setColor(QPalette::Window, Qt::white);
    sample_palette.setColor(QPalette::WindowText, Qt::white);

    //ui->label->setAutoFillBackground(true);
    ui->label->setPalette(sample_palette);
    //ui->label_2->setAutoFillBackground(true);
    ui->label_2->setPalette(sample_palette);
   // ui->label_3->setAutoFillBackground(true);
    ui->label_3->setPalette(sample_palette);
    //ui->label_4->setAutoFillBackground(true);
    ui->label_4->setPalette(sample_palette);
    //ui->label_5->setAutoFillBackground(true);
    ui->label_5->setPalette(sample_palette);
//flag_back_choose_chapter = 0;
}

MainMenu::~MainMenu()
{
    delete ui;
}

void MainMenu::on_choose_chapter_clicked()
{


    hide();
    ChooseChapter ChooseChapter;
    ChooseChapter.setModal(true);
    ChooseChapter.exec();

}



void MainMenu::on_search_with_words_clicked()
{

    hide();
    SearchWithWords words;
    words.setModal(true);
    words.exec();
}

void MainMenu::on_see_discussions_clicked()
{
    hide();
    discussions discussions;
    discussions.setModal(true);
    discussions.exec();
}

void MainMenu::on_so_exit_clicked()
{
    hide();
    signout_exit so_exit;
    so_exit.setModal(true);
    so_exit.exec();

}

void MainMenu::on_send_friend_request_clicked()
{
    hide();
    friend_request fr;
    fr.setModal(true);
    fr.exec();

}
