#Install jpeg
execute "cd /usr/src"
execute "wget http://fossies.org/linux/misc/jpegsrc.v9a.tar.gz"
execute "tar zxvf jpegsrc.v9a.tar.gz"
execute "cd jpeg-9a"
execute "./configure && make && make install"