-- Active: 1687383905733@@127.0.0.1@3306

/* Nesse exercício, começaremos a criar e popular as tabelas que armazenarão as informações do sistema do LabECommerce.
 a) Criação da tabela de pessoas usuárias
 nome da tabela: users
 colunas da tabela:
 id (TEXT, PK, único e obrigatório)
 name (TEXT e obrigatório)
 email (TEXT, único e obrigatório)
 password (TEXT e obrigatório)
 created_at (TEXT e obrigatório)
 b) Populando a tabela de pessoas usuárias
 popule a tabela com pelo menos 3 users diferentes */

CREATE TABLE
    if NOT EXISTS users (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL,
        created_at TEXT NOT NULL
    );

INSERT INTO
    users (
        id,
        name,
        email,
        password,
        created_at
    )
VALUES (
        "01",
        "Ítalo",
        "italobandeiraviana@gmail.com",
        "159951",
        "21"
    ), (
        "02",
        "Ruan",
        "ruan@gmail.com",
        "01234",
        "22"
    ), (
        "03",
        "Jhon",
        "wiki@gmail.com",
        "01234",
        "23"
    );

SELECT * FROM users;

/* Exercício 3
Continue a criar e popular as tabelas que armazenarão as informações do sistema do LabECommerce.

a) Criação da tabela de produtos
nome da tabela: products
colunas da tabela:
id (TEXT, PK, único e obrigatório)
name (TEXT e obrigatório)
price (REAL e obrigatório)
description (TEXT e obrigatório)
image_url (TEXT e obrigatório)
b) Populando a tabela de produtos
popule a tabela com pelo menos 5 produtos diferentes */


CREATE TABLE
    if NOT EXISTS products (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        price REAL UNIQUE NOT NULL,
        description TEXT NOT NULL,
        image_url TEXT NOT NULL
    );

INSERT INTO products
VALUES
(
        'prod001',
        'Naruto ps6',
        300,
        'Naruto ps6',
        'https://picsum.photos/seed/NarutoPS6/400'
    ), (
        'prod002',
        'Demon Slayer PS6',
        400,
        'Demon Slayer PS6',
        'https://picsum.photos/seed/Monitor/400'
    ), (
        'prod003',
        'Jujutsu PS6',
        500,
        'Jujutsu PS6',
        'https://picsum.photos/seed/JujutsuPS6/400'
    ), (
        'prod004',
        'HunterXHunter PS6',
        600,
        'HunterXHunter PS6',
        'https://picsum.photos/seed/HunterXHunter PS6/400'
    ), (
        'prod005',
        'Tokyo Ghoul PS6',
        700,
        'Tokyo Ghoul PS6',
        'https://picsum.photos/seed/Tokyo Ghoul PS6/400'
    );

    
SELECT * FROM products;