COMPILE LESS
------------

cd src/main/etc/wolfram/
gulp build
cp dist/assets/css/theme.css /home/git/festival/src/main/resources/static/css/theme.css

-- rabbitmqctl add_user festival_rabbit password

-- mysqldump -uroot -padmin festival  --no-create-db --ignore-table=festival.booking --databases festival > /home/git/festival/src/main/etc/sql/festival.sql

CSS
---

theme.css was 173k before I reduced less files, now 160k
Remove webkit transform, now 155k


