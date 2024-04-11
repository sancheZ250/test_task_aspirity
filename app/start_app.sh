#!/bin/bash

python app.py

exit_code=$?
if [ $exit_code -eq 0 ]; then
    echo "App has finished successfully. Stopping the database container."
    # Отправляем сигнал SIGTERM контейнеру базы данных
    docker stop my_db_container
    exit 0
else
    echo "App has finished with an error."
    exit $exit_code
fi