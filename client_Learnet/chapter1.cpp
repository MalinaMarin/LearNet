#include "chapter1.h"
#include "ui_chapter1.h"

chapter1::chapter1(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::chapter1)
{
    ui->setupUi(this);
}

chapter1::~chapter1()
{
    delete ui;
}
