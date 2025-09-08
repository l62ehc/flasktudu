#!/bin/bash
set -e

echo "ממתין ש-MySQL יהיה מוכן..."
# ננסה שוב ושוב עד ש-Mysql עונה
until mysqladmin ping -h mysql -u root -p"$MYSQL_ROOT_PASSWORD" --silent; do
  sleep 2
done
echo "✅ MySQL עובד"

echo "ממתין ש-Flask יהיה מוכן..."
# ננסה שוב ושוב עד ש-Flask עונה
until curl -s http://flask_app:5000/ > /dev/null; do
  sleep 2
done
echo "✅ Flask עובד"

echo "🎉 הכל תקין!"
