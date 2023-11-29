-- Crear base de datos para asistencia a clases
CREATE DATABASE If not EXISTS asistencia;

-- Selecciona la base de datos
USE asistencia;

CREATE Table asistencia_miercoles(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    asistencia TINYINT(1)
)

INSERT INTO universidad.asistencia (nombre, asistencia) VALUES
('')