create database if not exists universidad;

CREATE TABLE universidad.profesores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    direccion TEXT,
    fecha_nacimiento DATE,
    departamento VARCHAR(50),
    salario DECIMAL(10 , 2 ),
    activo TINYINT(1)
);

-- ALTER TABLE universidad.profesores ADD COLUMN fecha_nacimiento DATE;