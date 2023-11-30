-- Active: 1701256588790@@127.0.0.1@3306@universidad

-- Funciones

-- Realizar cálculos de grupo de filas, y nos pueden dar un único resultado por grupo

-- COUNT(), SUM, MAX, MIM

-- COUNT - contar el número de filas de la columna que especifiquemos

SELECT COUNT(*) FROM universidad.profesores;

-- Lo mismo pero modificamos el nombre de la columna con el resultado, opcional

SELECT COUNT(*) AS total_profesores FROM universidad.profesores;

-- Contar el total de filas de profesores que si tienen datos en la columna de salario

SELECT COUNT(salario) FROM universidad.profesores

-- Contar el total de filas de profesores que si tienen datos en telefono

SELECT count(telefono) FROM profesores;

-- Función SUM(), sumaría todos los valores de una columna específica

SELECT SUM(salario) FROM profesores;

-- Sumar los salarios solo de los profesores activos
SELECT SUM(salario) FROM profesores WHERE activo = 1;

-- Sumar salarios por departamento
SELECT SUM(salario), departamento FROM profesores GROUP BY departamento;
