# Используем базовый образ Python
FROM python:3.8-slim

# Устанавливаем переменную окружения для предотвращения вывода сообщений от Python в стандартный вывод
ENV PYTHONUNBUFFERED 1

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл с зависимостями (если такой есть)
COPY requirements.txt /app/

# Устанавливаем зависимости Python
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы из текущего каталога (включая наш Python скрипт) в рабочую директорию контейнера
COPY . /app/

# Команда для запуска Python скрипта
CMD ["python", "app.py"]