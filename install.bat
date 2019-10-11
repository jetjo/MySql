#SC CREATE MariaDB104 binPath= "C:\mariadb-10.4.8-winx64\bin\mysqld.exe" start= auto
#NET START MariaDB104
#SC DELETE MariaDB104

CD "C:\mariadb-10.4.8-winx64\bin\"

MkDir "C:\db"

mysql_install_db.exe --datadir=C:\db --service=MyDB104 --password=1234567

NET START MyDB104
