#-------------------------------------------------
#
# Project created by QtCreator 2016-11-17T16:30:50
#
#-------------------------------------------------

include (openh264-vlc-plugin.pri)

QT       -= core gui

TARGET = openh264_plugin
TEMPLATE = lib

INCLUDEPATH += $$_PRO_FILE_PWD_/../vlc-qt/libvlc-headers/include
INCLUDEPATH += $$_PRO_FILE_PWD_/../vlc-qt/libvlc-headers/include/vlc/plugins
INCLUDEPATH += $$_PRO_FILE_PWD_/../openh264/codec/api/svc

LIBS += -L$$_PRO_FILE_PWD_/../openh264 -lopenh264

SOURCES += codec_openh264.cpp

HEADERS +=

macx-clang: {
    LIBS += -L$$_PRO_FILE_PWD_/../vlc-qt/build/src/lib/VLCQtCore.framework/Versions/Current/lib -lvlc -lvlccore

    QMAKE_LFLAGS += -rpath .

    QMAKE_POST_LINK += install_name_tool -change /usr/local/lib/libopenh264.3.dylib libopenh264.3.dylib $${DESTDIR}/lib$${TARGET}.1.0.0.dylib$$escape_expand(\n\t)
}
