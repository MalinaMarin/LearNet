#ifndef CHOOSECHAPTER_H
#define CHOOSECHAPTER_H

#include <QDialog>

namespace Ui {
class ChooseChapter;
}

class ChooseChapter : public QDialog
{
    Q_OBJECT

public:
    explicit ChooseChapter(QWidget *parent = nullptr);
    ~ChooseChapter();

private slots:
    void on_pushButton_clicked();

    void on_back_clicked();

    void Action(int);

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



private:
    Ui::ChooseChapter *ui;
};

#endif // CHOOSECHAPTER_H
