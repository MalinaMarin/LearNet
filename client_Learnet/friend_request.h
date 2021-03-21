#ifndef FRIEND_REQUEST_H
#define FRIEND_REQUEST_H

#include <QDialog>

namespace Ui {
class friend_request;
}

class friend_request : public QDialog
{
    Q_OBJECT

public:
    explicit friend_request(QWidget *parent = nullptr);
    ~friend_request();

private slots:
    void on_users_clicked();



    void on_friends_clicked();

    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

private:
    Ui::friend_request *ui;
};

#endif // FRIEND_REQUEST_H
