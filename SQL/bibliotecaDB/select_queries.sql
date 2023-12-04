-- Active: 1701680762360@@127.0.0.1@3306@biblioteca

SELECT *
FROM
    biblioteca.usuarios,
    biblioteca.tarjetas_biblioteca
WHERE
    usuarios.id = tarjetas_biblioteca.id_usuario;

SELECT * FROM autores;

SELECT * FROM autores, libros WHERE autores.id = libros.id_autor;

SELECT count(*) FROM salas;

-- Seleccionar todos los eventos y salas, ordenados por sala
SELECT *
FROM
    eventos,
    eventos_salas,
    salas
WHERE
    eventos.id = eventos_salas.id_evento
    AND eventos_salas.id_sala = salas.id
ORDER BY salas.nombre;

SELECT * FROM libros, categorias, libros_categorias WHERE libros;