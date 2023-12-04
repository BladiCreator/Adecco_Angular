-- Active: 1701680762360@@127.0.0.1@3306@biblioteca

INSERT INTO
    usuarios(nombre, apellido, email)
VALUES (
        'Juan',
        'Pérez',
        'juanperez@gmail.com'
    ), (
        'Maria',
        'Gomez',
        'mariagomez@gmail.com'
    ), (
        'Carlos',
        'Martinez',
        'carlosmartinez@gmail.com'
    ), (
        'Laura',
        'Lopez',
        'lauralopez@gmail.com'
    );

INSERT INTO
    tarjetas_biblioteca (fecha_expiracion, id_usuario)
VALUES ('2025-11-20', 1), ('2020-06-03', 2), ('2023-08-08', 3), ('2024-09-17', 4);

INSERT INTO
    autores(nombre, apellido)
VALUES ('Juan', 'Pérez'), ('Maria', 'Gomez'), ('Carlos', 'Martinez'), ('Laura', 'Lopez');

INSERT INTO
    libros(titulo, id_autor)
VALUES ('El libro de la vida', 1), ('El libro de Eli', 2), ('En busca de la felicidad', 2), ('En busca del amor', 3), (
        'Ah no, que ya lo he encontrado',
        4
    ), ('365 dias', 4), ('50 sombras de Grey', 4);

INSERT INTO
    eventos(nombre, descripcion, fecha)
VALUES (
        'Taller de escritura',
        'Un taller para aspirante a escritura',
        '2023-01-15'
    ), (
        'Club de lectura',
        'Discusión sobre libros',
        '2023-02-12'
    ), (
        'Firma de libros',
        'Firma de la altura del nuevo libro de Geronimo Stilton',
        '2023-03-18'
    )

INSERT INTO
    salas(nombre, capacidad)
VALUES ('Sala 1', 50), ('Sala 2', 100), ('Sala 3', 30)

-- insertar datos a la eventos_salas

INSERT INTO
    eventos_salas(id_sala, id_evento)
VALUES (1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (3, 2), (3, 3);

INSERT INTO categorias(nombre)
VALUES ('Fantasía'), ('Romance'), ('Terror'), ('Comedia');

INSERT INTO
    libros_categorias(id_libro, id_categoria)
VALUES (1, 1), (1, 2), (1, 3), (2, 3);