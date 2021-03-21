#ifndef MAINMENU_H
#define MAINMENU_H

#include <QDialog>

namespace Ui {
class MainMenu;
}

class MainMenu : public QDialog
{
    Q_OBJECT

public:
    explicit MainMenu(QWidget *parent = nullptr);
    ~MainMenu();

private slots:
    void on_choose_chapter_clicked();

    void on_search_with_words_clicked();

    void on_see_discussions_clicked();

    void on_so_exit_clicked();

    void on_send_friend_request_clicked();

private:
    Ui::MainMenu *ui;
};

#endif // MAINMENU_H
