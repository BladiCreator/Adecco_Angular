-- Active: 1701680762360@@127.0.0.1@3306@concesionario

SELECT * FROM coche;

SELECT * FROM conductores;

SELECT * FROM coche, conductores, conductores_coches WHERE coche.id = conductores_coches.id AND conductores.id =;