mkdir /var/www
mkdir /var/www/html
cd /var/www/html
wget http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
rm -rf latest.tar.gz
mv wordpress/* ./
rm -r wordpress
