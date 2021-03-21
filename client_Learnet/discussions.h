#ifndef DISCUSSIONS_H
#define DISCUSSIONS_H

#include <QDialog>

namespace Ui {
class discussions;
}

class discussions : public QDialog
{
    Q_OBJECT

public:
    explicit discussions(QWidget *parent = nullptr);
    ~discussions();

private slots:

    void on_pushButton_clicked();


    void on_post_clicked();



    void on_back_clicked();


    void on_pushButton_2_clicked();

    void on_pushButton_3_clicked();

    void on_pushButton_4_clicked();

    void on_pushButton_5_clicked();

    void on_pushButton_6_clicked();

    void on_pushButton_7_clicked();

    void on_pushButton_8_clicked();

    void on_pushButton_9_clicked();

    void on_pushButton_10_clicked();

    void on_pushButton_11_clicked();

    void Action(int);

private:
    Ui::discussions *ui;
};

#endif // DISCUSSIONS_H
