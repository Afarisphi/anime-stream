# Anime Stream

Anime Streaming Example

## System Requirement
PHP 8.3.8
NodeJs 20.14.0

## Instalasi

1. **Clone Repository**
   ```
   git clone https://github.com/Afarisphi/anime-stream.git
   ```

2. **Install Dependencies**
Make sure to have Composer installed on your system, here is a link for Composer: 
https://getcomposer.org/doc/00-intro.md

```
   composer install
```

Make sure to have NodeJs installed on your system, here link for NodeJs:
https://nodejs.org/en

```
    npm install
```
3. **Setup ENV** 
Copy .env.example to .env


```
cp .env.example .env
php artisan key: generate
```

4. **Import DB**
Import anime_styx.sql to your DB, mine is Laragon

5. **Try To Run It**

Run artisan and npm

```
php artisan serve
```

```
npm run dev
```
