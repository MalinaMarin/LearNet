QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


TARGET = client_Learnet
TEMPLATE = app
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    choosechapter.cpp \
    discussions.cpp \
    friend_request.cpp \
    login_signup.cpp \
    main.cpp \
    mainmenu.cpp \
    mainwindow.cpp \
    searchwithwords.cpp \
    signout_exit.cpp \
    signup.cpp

HEADERS += \
    choosechapter.h \
    discussions.h \
    friend_request.h \
    login_signup.h \
    mainmenu.h \
    mainwindow.h \
    searchwithwords.h \
    signout_exit.h \
    signup.h \
    utilities.h

FORMS += \
    choosechapter.ui \
    discussions.ui \
    friend_request.ui \
    login_signup.ui \
    mainmenu.ui \
    mainwindow.ui \
    searchwithwords.ui \
    signout_exit.ui \
    signup.ui

