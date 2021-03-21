#ifndef SEARCHWITHWORDS_H
#define SEARCHWITHWORDS_H

#include <QDialog>

namespace Ui {
class SearchWithWords;
}

class SearchWithWords : public QDialog
{
    Q_OBJECT

public:
    explicit SearchWithWords(QWidget *parent = nullptr);
    ~SearchWithWords();

private slots:
    void on_search_clicked();

    void on_back_clicked();

private:
    Ui::SearchWithWords *ui;
};

#endif // SEARCHWITHWORDS_H
