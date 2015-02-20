#Install xstl
execute "cd /usr/src"
execute "wget ftp://xmlsoft.org/libxml2/libxslt-git-snapshot.tar.gz"
execute "tar zxvf libxslt-git-snapshot.tar.gz"
execute "cd libxslt-1.1.28"
execute "./configure && make && make install"