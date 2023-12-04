-- Active: 1701680762360@@127.0.0.1@3306@concesionario
CREATE DATABASE concesionario;

CREATE TABLE IF NOT EXISTS conductores (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    email varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS coche(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS conductores_coches(
    id_conductor INT NOT NULL,
    id_coche INT NOT NULL,
    PRIMARY KEY (id_conductor, id_coche),
    FOREIGN KEY (id_conductor) REFERENCES conductores(id),
    FOREIGN KEY (id_coche) REFERENCES coche(id)
);

SHOW TABLES FROM concesionario;