#-------------------------------------------------
#
# Project created by QtCreator 2017-12-28T17:31:08
#
#-------------------------------------------------

QT       += core gui sql concurrent

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = rfid-edacams
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
    scanid.cpp \
    mainwindow.cpp \
    registration.cpp \
    enrollment.cpp

HEADERS += \
    scanid.h \
    mainwindow.h \
    registration.h \
    enrollment.h

FORMS += \
    mainwindow.ui \
    registration.ui \
    enrollment.ui


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../../Qt/Qt5.7.0/Tools/mingw530_32/i686-w64-mingw32/lib/ -lwinscar
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../../Qt/Qt5.7.0/Tools/mingw530_32/i686-w64-mingw32/lib/ -lwinscard

INCLUDEPATH += $$PWD/../../../../../../../Qt/Qt5.7.0/Tools/mingw530_32/i686-w64-mingw32/include
DEPENDPATH += $$PWD/../../../../../../../Qt/Qt5.7.0/Tools/mingw530_32/i686-w64-mingw32/include

RESOURCES += \
    icons.qrc
