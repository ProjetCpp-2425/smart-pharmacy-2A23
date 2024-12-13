QT       += core gui \
    quick
QT += core gui network
QT += printsupport
QT += charts
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
QT+= sql
CONFIG += c++17
QT += serialport


# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Add the qrcodegen source file
INCLUDEPATH += $$PWD/QR-Code-generator-master/cpp
SOURCES += $$PWD/QR-Code-generator-master/cpp/qrcodegen.cpp \
    arduino.cpp

SOURCES += \
    connection.cpp \
    employe.cpp \
    finance.cpp \
    main.cpp \
    mainwindow.cpp \
    medicament.cpp \
    patient.cpp \
    smtp.cpp

HEADERS += \
    arduino.h \
    connection.h \
    employe.h \
    finance.h \
    mainwindow.h \
    medicament.h \
    patient.h \
    smtp.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES +=
QT += charts

QT += charts sql
QT += network
