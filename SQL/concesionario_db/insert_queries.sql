-- Active: 1701680762360@@127.0.0.1@3306@concesionario

INSERT INTO
    conductores(nombre, apellido, email)
VALUES (
        'Juan',
        'Perez',
        'juan@gmail.com'
    ), (
        'John',
        'Lopez',
        'john@gmail.com'
    ), (
        'Diego',
        'Kris',
        'diego@gmail.com'
    )

INSERT INTO
    coche(marca, modelo, color)
VALUES ('Audi', 'A4', 'Rojo'), ('BMW', 'Golf', 'Azul'), ('Audi', 'R8', 'Verde')

INSERT INTO conductores_coches(id_conductor, id_coche) VALUES
(1,1), (1,2), (1,3), (2,1)