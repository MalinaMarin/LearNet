#include "choosechapter.h"
#include "ui_choosechapter.h"
#include "mainmenu.h"
#include "utilities.h"
#include <string.h>
#include <string>
#include <QMessageBox>
int text_length;
char* text=(char*)malloc(25000);


void ChooseChapter::Action(int capitol){
    int option = 1;
    int send_1 = write(sd, &option, sizeof(int));
    if(send_1 <= 0){
        qDebug()<<"Client: nu am putut trimite optiunea 1 - Choose Chapter la server\n";
    }
    int send_nr_cap = write(sd, &capitol, sizeof(int));
    if (send_nr_cap  <= 0) {
        qDebug()<<"Client: eroare, nu am putut trimite serverului numarul capitolului.\n";
    }

    //citim lungimea informatiei primita de la server
    int read_lg = read (sd, &text_length, sizeof(int));
    if (read_lg <= 0) {
        qDebug()<<"Client: eroare, nu am putut citi de la server lungimea informatiei aferente capitolului ales.\n";
    }

    //citim de la server toata informatia
    int read_txt = read (sd, text, text_length);
    if (read_txt <= 0) {
        qDebug()<<"Client: eroare, nu am putut citi de la server informatia aferenta capitolului ales.\n";
    }

    text[text_length]='\0';
    ui->textBrowser->setText(text);
}

ChooseChapter::ChooseChapter(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::ChooseChapter)
{


    ui->setupUi(this);
    QPixmap pic3("/home/malina/Learnet/pic3.png");
//    ui->label_pic2->setPixmap(pic2);
//    int l1 = ui->label_pic2->width();
//    int l2 = ui->label_pic2->height();

    ui->label->setPixmap(pic3);
    ui->label->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored );
    QPalette sample_palette;
   // sample_palette.setColor(QPalette::Window, Qt::white);
    sample_palette.setColor(QPalette::WindowText, Qt::white);


}


ChooseChapter::~ChooseChapter()
{
    delete ui;
}

void ChooseChapter::on_back_clicked()
{
    hide();
    MainMenu mainmenu;
    mainmenu.exec();

}

void ChooseChapter::on_pushButton_clicked()
{

    int capitol = 1;
    Action(capitol);


}


void ChooseChapter::on_pushButton_2_clicked()
{
    int capitol = 2;
    Action(capitol);

}
void ChooseChapter::on_pushButton_3_clicked()
{
    int capitol = 3;
    Action(capitol);
}
void ChooseChapter::on_pushButton_4_clicked()
{
    int capitol = 4;
    Action(capitol);

}
void ChooseChapter::on_pushButton_5_clicked()
{
    int capitol = 5;
    Action(capitol);

}
void ChooseChapter::on_pushButton_6_clicked()
{
    int capitol = 6;
    Action(capitol);

}
void ChooseChapter::on_pushButton_7_clicked()
{
    int capitol = 7;
    Action(capitol);

}
void ChooseChapter::on_pushButton_8_clicked()
{
    int capitol = 8;
    Action(capitol);
}
void ChooseChapter::on_pushButton_9_clicked()
{
    int capitol = 9;
    Action(capitol);

}
void ChooseChapter::on_pushButton_10_clicked()
{
    int capitol = 10;
    Action(capitol);
}
void ChooseChapter::on_pushButton_11_clicked()
{
    int capitol = 11;
    Action(capitol);

}

