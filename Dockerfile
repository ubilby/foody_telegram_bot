# Используем официальный образ Python версии 3.10.12
FROM python:3.10.12-slim

# Устанавливаем переменную окружения для Python
ENV PYTHONUNBUFFERED=1

# Создаем рабочую директорию внутри контейнера
WORKDIR /app

# Теперь копируем все файлы проекта
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Указываем команду для запуска main.py
CMD ["python", "main.py"]
