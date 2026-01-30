# Аттестация сотрудника — SpaceMETALL (attestaion_sm)

Страница выбора аттестации для перехода в Silver или Gold лигу. Все файлы и картинки лежат в одной папке **attestaion_sm**.

## Структура

- **index.html** — главная страница (выбор Silver / Gold). Логотип и картинки лиг из папки **assets/**.
- **attestation-silver.html** — тест Silver (20 вопросов, проходной 16).
- **attestation-gold.html** — тест Gold (20 вопросов, проходной 16).
- **assets/** — логотип и изображения Silver/Gold.

## Как открыть локально

1. Откройте **Терминал** (Terminal / iTerm на Mac).

2. Перейдите в папку **attestaion_sm** в Загрузках:
   ```bash
   cd ~/Downloads/attestaion_sm
   ```

3. Запустите сервер:
   ```bash
   ./start-local.sh
   ```
   Либо вручную:
   ```bash
   python3 -m http.server 34567
   ```
   и откройте в браузере **http://localhost:34567/**.

4. Остановить сервер: **Ctrl+C** в терминале.

## Картинки

В папке **assets/** должны лежать три файла: **sm-logo.png**, **silver.png**, **gold.png**.  
Они уже есть в папке «Загрузки» — скопируйте их в **attestaion_sm/assets/** (или они уже скопированы туда автоматически).
