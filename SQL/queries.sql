select * from profesores;

select * from profesores where salario > 2000 and salario < 2500;

select * from profesores order by apellido asc;

select * from profesores order by apellido desc;

select * from profesores where email like '%.com';

-- Contar numeros de profesores
select count(*) as total_profesores from profesores;

-- Salario promedio de todos los profesores
select avg(salario) as salario_promedio from  profesores;

-- Seleccionar a los profesores con salarios mayor a la media
select * from profesores where salario > (select avg(salario) from profesores);

-- Seleccionar a los profesores que nacieron en enero
Select * from profesores where month(fecha_nacimiento) = 1;

-- Selecciona los profesores con salario entre 6000 y 7000
Select * from profesores where salario between 6000 and 7000;

-- selecciona a los profesores no activos (activo = 0) y que tenga un departamento especifico = 'Sales'
select * from profesores where activo = 0 and departamento = 'Sales';

-- selecciona a los profesores que tenga los numeros de telefonos especificado
select * from profesores where telefono is not null;

-- selecciona a los profesores inactivos ordenado por fecha de nacimiento ascendente
select * from profesores where activo = 0 ORDER BY fecha_nacimiento asc;

-- selecciona a los profesores con salario máximo
select * from profesores where salario = (select Max(salario) from profesores);

-- selecciona a los profesores con el salario mínimo y máximo
select * from profesores where salario = (select Max(salario) from profesores) or salario = (select min(salario) from profesores);

-- selecciona a los profesores 


-- ** Actualizar datos existente UPDATE filas(registro)

-- Actualizar el teléfono del profesor con ID = 1
UPDATE profesores SET telefono = '555-555-5545' WHERE id = 1;

-- Actualizar el departamento del profesor con id = 3;
UPDATE profesores SET departamento = 'Sales' WHERE id = 3

-- Modifica el telefono y el email del profesor con id = 3
UPDATE universidad.profesores SET telefono = '158-565-5545', email = "trazzi@huen.com" WHERE id = 3;

-- Modifica el salario del profesor con id = 4
UPDATE universidad.profesores SET salario = 20000 WHERE id = 4;

-- Modifica el nombre de un departamento, todos los que dicen Support digan Ventas
UPDATE universidad.profesores SET departamento = 'Ventas' where departamento = 'Support';

-- Actualizar la dirección y el salario del profesor con id = 5
UPDATE universidad.profesores SET direccion = '9064 Express Trail' ,salario = 1900 WHERE id = 5

-- Actualizar la di
-- UPDATE universidad.profesores SET  WHERE

-- Eliminar el profesor con id = 1
DELETE FROM universidad.profesores WHERE id = 1;

-- Eliminar al profesor con el id = 20
DELETE FROM universidad.profesores WHERE id = 20


