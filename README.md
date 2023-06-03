# [Дипломная работа “Облачное хранилище”](https://github.com/netology-code/jd-homeworks/blob/master/diploma/cloudservice.md)

## Описание проекта

REST-сервис предоставляет интерфейс для возможности загрузки файлов и вывода списка уже загруженных файлов пользователя
по [заранее описанной спецификации](https://github.com/netology-code/jd-homeworks/blob/master/diploma/CloudServiceSpecification.yaml).

Все запросы к сервису авторизованы.

Заранее подготовленное веб-приложение (FRONT) подключается к разработанному сервису без доработок,
а также использует функционал FRONT для авторизации, загрузки и вывода списка файлов пользователя.

Изначально FRONT доступен на порту 8080, BACKEND - на порту 5050.

Описание проекта "с картинками" смотри чуть ниже.

## Стартовые пользователи:

**USERNAME:** timur@mail.ru **PASSWORD:** timur

**USERNAME:** user@mail.ru **PASSWORD:** user

## Описание реализации:

- Приложение разработано с использованием Spring Boot;
- Использован сборщик пакетов Maven;
- Использована база данных PostgreSQL;
- Использована система управления миграциями Liquibase;
- Для запуска используется docker, docker-compose;
- Код размещен на github;
- Код покрыт unit тестами с использованием mockito;
- Добавлены интеграционные тесты с использованием testcontainers;
- Информация о пользователях сервиса хранится в базе данных;
- Информация о файлах пользователей сервиса хранится в базе данных.

## ! ! ! ! !

[Интеграционный тест](https://github.com/TimurDushanov/CloudServiceT/blob/master/src/test/java/ru/netology/CloudServiceTApplicationTests.java) и
[JPA тесты](https://github.com/TimurDushanov/CloudServiceT/tree/master/src/test/java/ru/netology/repository) (StorageFileRepositoryTest.java, UserRepositoryTest.java)
изначально закомментированы, поскольку с ними не получится выполнить maven-package, а также собрать docker-контейнер.
После сборки docker-контейнера требуется раскомментировать и запустить данные тесты.

## Запуск приложения

### Запуск FRONT:

1. Установить nodejs (версия 14.21.3) на компьютер [следуя инструкции](https://nodejs.org/ru/download/);
2. Скачать [FRONT](https://github.com/TimurDushanov/CloudServiceT/tree/master/FRONT) (JavaScript);
3. Перейти в папку FRONT приложения и все команды для запуска выполнять из нее;
4. Следуя описанию README.md FRONT проекта запустить nodejs приложение (npm install...);
5. Для запуска FRONT приложения с расширенным логированием использовать команду: `npm run serve`.

### Запуск BACKEND:

1. Скачать данный проект, выполнить `maven -> clean -> package`;
2. Запустить `docker-compose.yaml`.
Автоматически создадутся все необходимые в базе данных таблицы (с двумя стартовыми пользователями в таблице users).


## Стартовая страница:

![](https://github.com/TimurDushanov/CloudServiceT/blob/master/%D0%98%D0%A2%D0%9E%D0%93/Screenshot_1.png)

## Страница с загруженным в облако файлом
![](https://github.com/TimurDushanov/CloudServiceT/blob/master/%D0%98%D0%A2%D0%9E%D0%93/Screenshot_2.png)
