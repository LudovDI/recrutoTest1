# Базовый образ с Python
FROM python:3.10

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY . /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir fastapi uvicorn

# Открываем порт 8080 (он нужен для Google Cloud Run)
EXPOSE 8080

# Запускаем сервер FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]