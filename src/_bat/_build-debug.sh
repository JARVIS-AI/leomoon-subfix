AppName='LeoMoon SubFix'
#cleanup old build if any
rm -rf "`pwd`/__pycache__"
rm -rf "`pwd`/build"
rm -rf "`pwd`/dist/build"
rm -rf "`pwd`/dist/$AppName"
#build python
#/usr/lib/x86_64-linux-gnu/qt5/bin
python3.8 -m PyInstaller --exclude-module tkinter --exclude-module _asyncio --exclude-module _bz2 --exclude-module _decimal --exclude-module _elementtree --exclude-module _hashlib --exclude-module _lzma --exclude-module _multiprocessing --exclude-module _overlapped --exclude-module _queue --exclude-module _testcapi --clean --debug=all --onedir --noupx --name "$AppName" --icon=main.ico main.py
rm -rf "`pwd`/dist/$AppName/PyQt5/Qt/bin"
rm -rf "`pwd`/dist/$AppName/PyQt5/Qt/translations"
rm -rf "`pwd`/dist/$AppName/include"
rm -rf "`pwd`/dist/$AppName/lib"
rm -rf "`pwd`/dist/$AppName/lib2to3"
#pyqt 5.14.1 cleanup
rm -rf "`pwd`/dist/$AppName/cryptography-2.8-py3.8.egg-info"
rm -rf "`pwd`/dist/$AppName/libcrypto.so.1.0.0"
rm -rf "`pwd`/dist/$AppName/libQt5Network.so.5"
rm -rf "`pwd`/dist/$AppName/libQt5Qml.so.5"
rm -rf "`pwd`/dist/$AppName/libQt5QmlModels.so.5"
rm -rf "`pwd`/dist/$AppName/libQt5Quick.so.5"
rm -rf "`pwd`/dist/$AppName/libQt5WebSockets.so.5"
#open folder
cd "`pwd`/dist"
nautilus .