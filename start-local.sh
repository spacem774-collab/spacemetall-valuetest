#!/bin/bash
# Запуск локального сервера из папки attestaion_sm (всё в одной папке).

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

if [ ! -f "index.html" ]; then
  echo "Ошибка: index.html не найден в $SCRIPT_DIR"
  exit 1
fi

if [ ! -d "assets" ]; then
  echo "Внимание: папка assets не найдена. Создайте assets и положите туда sm-logo.png, silver.png, gold.png"
fi

PORT=34567
while ! python3 -c "import socket; s=socket.socket(); s.bind(('', $PORT)); s.close()" 2>/dev/null; do
  PORT=$((PORT + 1))
  [ $PORT -gt 34600 ] && echo "Не удалось найти свободный порт" && exit 1
done

echo "Сервер запущен из: $SCRIPT_DIR"
echo "Откройте в браузере: http://localhost:$PORT/"
echo "Остановка: Ctrl+C"
echo ""
python3 -m http.server $PORT
