-- Active: 1701680762360@@127.0.0.1@3306@biblioteca

CREATE DATABASE IF NOT EXISTS biblioteca;

USE DATABASE biblioteca;

-- One to one DATABASE

CREATE TABLE
    IF NOT EXISTS usuarios (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        apellido VARCHAR(50) NOT NULL,
        email VARCHAR(50) NOT NULL
    );

CREATE TABLE
    IF NOT exists tarjetas_biblioteca(
        id INT AUTO_INCREMENT PRIMARY KEY,
        fecha_expiracion DATE,
        id_usuario INT NOT NULL UNIQUE,
        Foreign Key (id_usuario) REFERENCES usuarios(id)
    );

-- one to many

CREATE Table
    autores(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        apellido VARCHAR(50) NOT NULL
    );

CREATE TABLE
    libros(
        id INT AUTO_INCREMENT PRIMARY KEY,
        titulo VARCHAR(50) NOT NULL,
        id_autor INT,
        Foreign Key (id_autor) REFERENCES autores(id)
    );

CREATE Table
    if not exists eventos(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        descripcion TEXT,
        fecha DATE
    );

-- Tabla salas

CREATE Table
    if NOT exists salas(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        capacidad INT
    )

CREATE TABLE
    if not exists eventos_salas(
        id_sala INT,
        id_evento INT,
        PRIMARY KEY (id_sala, id_evento),
        Foreign Key (id_sala) REFERENCES salas(id),
        Foreign Key (id_evento) REFERENCES eventos(id)
    )

-- Mostrar las tablas

SHOW TABLES;

CREATE TABLE
    categorias (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL
    );

CREATE TABLE
    libros_categorias (
        id_libro INT,
        id_categoria INT,
        PRIMARY KEY (id_libro, id_categoria),
        Foreign Key (id_libro) REFERENCES libros(id),
        Foreign Key (id_categoria) REFERENCES categorias(id)
    );