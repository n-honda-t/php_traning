#!/bin/bash

# MySQL接続情報
DB_USER="developer" # データベースユーザー名
DB_PASS="developer" # データベースパスワード
DB_NAME="training"  # データベース名
SQL_DIR="./sql/ddl" # SQLファイルが存在するディレクトリのパス

for SQL_FILE in $SQL_DIR/*.sql; do
    if [ -f "$SQL_FILE" ]; then
        echo "Executing $SQL_FILE..."
        FILE_CONTENT=`cat $SQL_FILE`
        docker-compose exec mysql bash -c "mysql -u $DB_USER -p$DB_PASS -D $DB_NAME -e '$FILE_CONTENT'"
        echo "Done."
    fi
done
echo "completed successfully."