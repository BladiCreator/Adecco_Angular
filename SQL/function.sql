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

-- El promedio de los profesores activos
SELECT AVG(salario) FROM profesores WHERE activo = 1;

-- El Salario promedio los salarios por departamento
SELECT AVG(salario), departamento FROM profesores GROUP BY departamento;

-- El máximo salario por departamento
SELECT MAX(salario), departamento FROM profesores GROUP BY departamento;
-- El mínimo salario por departamento
SELECT MIN(salario), departamento FROM profesores GROUP BY departamento;

-- Agrupar por departamento y estado (activo o no activo)
SELECT departamento, activo, COUNT(*) AS cantidad_profesores FROM profesores GROUP BY departamento, activo;

-- Salario promedio por departamento y estado (Activo o no activo)
SELECT AVG(salario), departamento, activo FROM profesores GROUP BY departamento, activo;

-- Filtrar departamento con un salario promedio mayor que 5000
SELECT departamento, AVG(salario) AS salario_promedio FROM profesores GROUP BY departamento HAVING salario_promedio > 5000;

-- Filtrar rango de salario promedio por departamento, que me aparezcan solo los que tienen un salario promedio entre 4000 y 6000
SELECT AVG(salario) AS salario_promedio, departamento FROM  profesores GROUP BY departamento HAVING AVG(salario) BETWEEN 4000 AND 6000;

-- Filtrar por departamento con 2 o mas profesores activos
SELECT departamento, COUNT(*) as cantidad_profesores FROM profesores WHERE activo = 1 GROUP BY departamento HAVING cantidad_profesores > 2;