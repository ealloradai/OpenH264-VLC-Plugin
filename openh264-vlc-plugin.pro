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

# LIBS += -L$${DESTDIR} -lopenh264.1
LIBS += $$_PRO_FILE_PWD_/../openh264/libopenh264.a

SOURCES += codec_openh264.cpp

HEADERS +=

macx-clang: {

    QMAKE_MAC_SDK=macosx10.11
    QMAKE_MACOSX_DEPLOYMENT_TARGET=10.11

    # pre target change nate to lib
#    changename.target = changename_target
#    changename.commands += $$quote(cp $$_PRO_FILE_PWD_/../openh264/libopenh264.1.dylib $${DESTDIR}$$escape_expand(\n\t))
#    changename.commands += $$quote(install_name_tool -id @executable_path/../Frameworks/libopenh264.1.dylib $${DESTDIR}/libopenh264.1.dylib$$escape_expand(\n\t))
#    QMAKE_EXTRA_TARGETS += changename
#    PRE_TARGETDEPS += changename_target

    QMAKE_LFLAGS += -rpath @executable_path/../Frameworks
    LIBS += -L$$_PRO_FILE_PWD_/../vlc-qt/build/src/lib/VLCQtCore.framework/Versions/Current/lib -lvlc -lvlccore


}
