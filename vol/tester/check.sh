#!/bin/bash
set -e

echo "בודק חיבור ל-MySQL..."
mysqladmin ping -h mysql -u root -p"$MYSQL_ROOT_PASSWORD" --silent || exit 1
echo "✅ MySQL עובד"

echo "בודק חיבור ל-Flask..."
curl -s http://flask:5000/ > /dev/null || exit 1
echo "✅ Flask עובד"

echo "🎉 הכל תקין!"
