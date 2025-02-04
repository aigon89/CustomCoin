#!/bin/bash
MXE_PATH=/opt/mxe
MXE_INCLUDE_PATH=$MXE_PATH/usr/i686-w64-mingw32.static/include
MXE_LIB_PATH=$MXE_PATH/usr/i686-w64-mingw32.static/lib
INCLUDEPATH=$MXE_PATH/SwissCoin-Classic-Windows/build
$MXE_PATH/usr/bin/i686-w64-mingw32.static-qmake-qt5 \
 BOOST_LIB_SUFFIX=-mt \
 BOOST_THREAD_LIB_SUFFIX=_win32-mt \
 BOOST_INCLUDE_PATH=$MXE_INCLUDE_PATH \
 BOOST_LIB_PATH=$MXE_LIB_PATH \
 OPENSSL_INCLUDE_PATH=$MXE_INCLUDE_PATH/openssl \
 OPENSSL_LIB_PATH=$MXE_LIB_PATH \
 OPENSSL_VERSION="1.0.0" \
 BDB_INCLUDE_PATH=$MXE_INCLUDE_PATH \
 BDB_LIB_PATH=$MXE_LIB_PATH \
 MINIUPNPC_INCLUDE_PATH=$MXE_INCLUDE_PATH \
 MINIUPNPC_LIB_PATH=$MXE_LIB_PATH \
 QMAKE_LRELEASE=$MXE_PATH/usr/i686-w64-mingw32.static/qt5/bin/lrelease swisscoin-classic-qt.pro
TARGET_OS=NATIVE_WINDOWS make CC=$MXE_PATH/usr/bin/i686-w64-mingw32.static-gcc \
CXX=$MXE_PATH/usr/bin/i686-w64-mingw32.static-g++ 2>&1 | tee make-w32.static-trz-debug.txt
