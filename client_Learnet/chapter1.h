#ifndef CHAPTER1_H
#define CHAPTER1_H

#include <QDialog>

namespace Ui {
class chapter1;
}

class chapter1 : public QDialog
{
    Q_OBJECT

public:
    explicit chapter1(QWidget *parent = nullptr);
    ~chapter1();

private:
    Ui::chapter1 *ui;
};

#endif // CHAPTER1_H
