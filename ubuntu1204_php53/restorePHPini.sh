#!/bin/bash -e
sudo su - shippable -c "cp -vr /home/shippable/.phpenv/versions/5.3/etc/.php.ini.original /home/shippable/.phpenv/versions/5.3/etc/php.ini"

echo "=================== Increasing the php mem for all version to 1G ============="
sed -i s/"memory_limit = 128M"/"memory_limit = 1G"/g /home/shippable/.phpenv/versions/5.3/etc/php.ini
sed -i s/"memory_limit = 128M"/"memory_limit = 1G"/g /home/shippable/.phpenv/versions/5.3/etc/.php.ini.original