import psycopg2

# Параметры подключения к базе данных
db_params = {
    'dbname': 'mydatabase',
    'user': 'myuser',
    'password': 'mypass',
    'host': 'db',
    'port': 5432,
    'client_encoding': 'UTF-8'  # Указываем кодировку UTF-8
}

connection = None  # Объявляем переменную connection до блока try

try:
    # Подключение к базе данных
    connection = psycopg2.connect(**db_params)
    cursor = connection.cursor()

    cursor.execute("SELECT * FROM PERSON;")

    rows = cursor.fetchall()
    for row in rows:
        print(row)

except (Exception, psycopg2.Error) as error:
    print('Ошибка при работе с контейнером базы данных PostgreSQL:', error)

finally:
    if connection:
        cursor.close()
        connection.close()
        print('соединение закрыто')