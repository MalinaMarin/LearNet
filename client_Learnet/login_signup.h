#ifndef LOGIN_SIGNUP_H
#define LOGIN_SIGNUP_H

#include <QDialog>

namespace Ui {
class login_signup;
}

class login_signup : public QDialog
{
    Q_OBJECT

public:
    explicit login_signup(QWidget *parent = nullptr);
    ~login_signup();

private slots:

    void on_signup_button_clicked();

    void on_login_button_clicked();

private:
    Ui::login_signup *ui;
};

#endif // LOGIN_SIGNUP_H
