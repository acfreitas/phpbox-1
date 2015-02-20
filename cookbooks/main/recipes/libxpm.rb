#Install LibXpm
execute "cd /usr/src"
execute "wget ftp://ftp.freedesktop.org/pub/xorg/development/X11R7.0-RC4/lib/libXpm-3.5.4.2.tar.gz"
execute "tar zxvf libXpm-3.5.4.2.tar.gz"
execute "cd libXpm-3.5.4.2"
execute "./configure && make && make install"