#include "searchwithwords.h"
#include "ui_searchwithwords.h"
#include "mainmenu.h"
#include "utilities.h"
#include <stdlib.h>
SearchWithWords::SearchWithWords(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::SearchWithWords)
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
    ui->lineEdit->setText("");
     ui->textEdit->setText("");
}

SearchWithWords::~SearchWithWords()
{
    delete ui;
}


void SearchWithWords::on_search_clicked()
{
    const char* text_in_char;
    QString text_in_qstring = ui->text->text();
    text_in_char = text_in_qstring.toStdString().c_str();
    int lungime = strlen(text_in_char);

    if(lungime == 0){
        ui->lineEdit->setText("You didn't type anything");
        int zero = 0;
        if ( write(sd, &zero , sizeof(int))  <= 0) {
            qDebug()<<"Eroare la trimitere raspuns zero\n";
        }
    }
    else {
        ui->lineEdit->setText("");
        int option = 2;
        int send_2 = write(sd, &option, sizeof(int));
        if(send_2 <= 0){
            qDebug()<<"Client: nu am putut trimite optiunea 2 - Search with Words la server\n";
        }
    int send_length = write(sd, &lungime, sizeof(int));
    if(send_length <= 0){
        qDebug()<<"Client - eroare, nu am putut trimite lungimea textului de cautat cu Search with Words\n";
    }
    int send_text = write(sd, text_in_char, lungime);
    if(send_text <= 0){
        qDebug()<<"Client - eroare, nu am putut trimite textul de cautat cu Search with Words\n";
    }
    fflush(stdout);
    int count;
    int recv_count = read(sd, &count, sizeof(int));
    if(recv_count <= 0){
        qDebug()<<"Client - eroare, nu am primit de la server numarul de capitole\n";
    }
      qDebug()<<"CLIENT - am primit nr de capitole!!!\n\n";

    char* answer = (char*) malloc(200);
    strcpy(answer, "   \n");

    if(count == 0){
        ui->textEdit->setText("Textul nu apare in niciun capitol");
    }
    else
        if(count > 0 ){
            ui->textEdit->setText("Am gasit textul!");
        }

    for(int i=0; i<count; i++)
    {
         strcat(answer, "");

        fflush(stdout);
        int nr_capitol, nr_aparitii;
        int recv_cap = read(sd, &nr_capitol, sizeof(int));
        if(recv_cap <= 0){
            qDebug()<<"Client - eroare, nu am primit de la server numarul capitolului\n";
        }


        fflush(stdout);
        int recv_ap = read(sd, &nr_aparitii, sizeof(int));
        if(recv_ap <= 0){
            qDebug()<<"Client - eroare, nu am primit de la server numarul de aparitii\n";
        }

        fflush(stdout);


          ui->textEdit->append("In capitolul " + QString::number(nr_capitol) + " am gasit textul de " + QString::number(nr_aparitii) + " ori\n");

    }

}



}

void SearchWithWords::on_back_clicked()
{
    hide();
    MainMenu mainmenu;
    mainmenu.exec();
}
