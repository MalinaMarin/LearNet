#ifndef SIGNOUT_EXIT_H
#define SIGNOUT_EXIT_H

#include <QDialog>

namespace Ui {
class signout_exit;
}

class signout_exit : public QDialog
{
    Q_OBJECT

public:
    explicit signout_exit(QWidget *parent = nullptr);
    ~signout_exit();

private slots:
    void on_pushButton_2_clicked();

    void on_pushButton_3_clicked();

    void on_pushButton_clicked();

private:
    Ui::signout_exit *ui;
};

#endif // SIGNOUT_EXIT_H
