## Milo Solutions - project file TEMPLATE
#
#
## (c) Milo Solutions, 2016

QT = core

## Set up application version
VERSION=0.0.1

## Add version define. You can now use this in C++ code:
##  QString someString(APP_VERSION);
DEFINES+= APP_VERSION=\\\"$$VERSION\\\"

# Warning! QStringBuilder can crash your app! See last point here:
# https://www.kdab.com/uncovering-32-qt-best-practices-compile-time-clazy/
# !!!
DEFINES *= QT_USE_QSTRINGBUILDER
QMAKE_CXXFLAGS += -Werror

TEMPLATE = app
CONFIG += c++14
TARGET = Template

SOURCES += main.cpp

OTHER_FILES += \
    bumpVersion.sh \
    template.doxyfile \
    README.md \
    Release.md \
    .gitignore \
    license-Qt.txt

## Put all build files into build directory
##  This also works with shadow building, so don't worry!
BUILD_DIR = build
OBJECTS_DIR = $$BUILD_DIR
MOC_DIR = $$BUILD_DIR
RCC_DIR = $$BUILD_DIR
UI_DIR = $$BUILD_DIR
DESTDIR = $$BUILD_DIR/bin

## Platforms

## Modules