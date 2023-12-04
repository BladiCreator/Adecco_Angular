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

-- Insertar datos

INSERT INTO usuarios(nombre, apellido, email) VALUES
('Juan','Pérez','juanperez@gmail.com'),
('Maria','Gomez','mariagomez@gmail.com'),
('Carlos','Martinez','carlosmartinez@gmail.com'),
('Laura','Lopez','lauralopez@gmail.com');

INSERT INTO tarjetas_biblioteca (fecha_expiracion, id_usuario) VALUES
    ('2025-11-20', 1),
    ('2020-06-03', 2),
    ('2023-08-08', 3),
    ('2024-09-17', 4);

SELECT * FROM biblioteca.usuarios, biblioteca.tarjetas_biblioteca WHERE usuarios.id = tarjetas_biblioteca.id_usuario;


-- one to many

CREATE Table autores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL
);

CREATE TABLE libros(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    id_autor INT,
    Foreign Key (id_autor) REFERENCES autores(id)
);

INSERT INTO autores(nombre, apellido) VALUES
    ('Juan','Pérez'),
    ('Maria','Gomez'),
    ('Carlos','Martinez'),
    ('Laura','Lopez');
    
INSERT INTO libros(titulo, id_autor) VALUES
    ('El libro de la vida', 1),
    ('El libro de Eli', 2),
    ('En busca de la felicidad', 2),
    ('En busca del amor', 3),
    ('Ah no, que ya lo he encontrado', 4),
    ('365 dias', 4),
    ('50 sombras de Grey', 4);

SELECT * FROM autores;

SELECT * FROM autores, libros WHERE autores.id = libros.id_autor;