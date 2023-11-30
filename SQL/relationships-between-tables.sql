-- **One to One

CREATE Table
    estudiantes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50),
        fecha_nacimiento DATE,
        email VARCHAR(100) UNIQUE NOT NULL
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        1,
        'Concordia Stoeck',
        '2022-03-28',
        'cstoeck0@netscape.com'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        2,
        'Dona Amoore',
        '2022-10-26',
        'damoore1@woothemes.com'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        3,
        'Nissa Sedcole',
        '2022-08-13',
        'nsedcole2@tiny.cc'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        4,
        'Mavis Hallen',
        '2023-04-30',
        'mhallen3@wikia.com'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        5,
        'Aldridge Liddington',
        '2023-06-09',
        'aliddington4@unicef.org'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        6,
        'Niel Skullet',
        '2023-10-20',
        'nskullet5@dion.ne.jp'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        7,
        'Gerry Rivalant',
        '2022-11-04',
        'grivalant6@sfgate.com'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        8,
        'Nancee Sellman',
        '2023-06-18',
        'nsellman7@netlog.com'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        9,
        'Lorrie Arter',
        '2023-07-23',
        'larter8@hibu.com'
    );

insert into
    estudiantes (
        id,
        nombre,
        fecha_nacimiento,
        email
    )
values (
        10,
        'Theda Gomersal',
        '2023-05-14',
        'tgomersal9@addthis.com'
    );

CREATE Table
    cursos(
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_estudiante INT UNIQUE,
        nombre VARCHAR(100),
        FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id)
    );

insert into
    cursos (id_estudiante, nombre)
values (1, 'Collier-Jast');

insert into
    cursos (id_estudiante, nombre)
values (
        2,
        'Anderson, Stehr and Dickinson'
    );

insert into
    cursos (id_estudiante, nombre)
values (3, 'Kuhn and Sons');

insert into
    cursos (id_estudiante, nombre)
values (4, 'Haag, Dare and Casper');

insert into
    cursos (id_estudiante, nombre)
values (5, 'Rice-Medhurst');

insert into
    cursos (id_estudiante, nombre)
values (6, 'Blanda-Lemke');

insert into
    cursos (id_estudiante, nombre)
values (7, 'Witting, Stehr and Ebert');

insert into
    cursos (id_estudiante, nombre)
values (
        8,
        'Wilkinson, Nolan and Runolfsdottir'
    );

insert into
    cursos (id_estudiante, nombre)
values (9, 'Corkery-Goodwin');

insert into
    cursos (id_estudiante, nombre)
values (10, 'Goyette LLC');

SELECT * FROM cursos;

SELECT COUNT(*) FROM estudiantes;

SELECT *
FROM estudiantes, cursos
WHERE
    estudiantes.id = cursos.id_estudiante;

-- **One to many

CREATE Table
    clientes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50),
        direccion VARCHAR(100) DEFAULT 'dirección no especificada'
    );

INSERT into
    clientes (nombre, direccion)
VALUES (
        'Karlyn Diess',
        '83 Lyons Place'
    );

insert into
    clientes (nombre, direccion)
values (
        'Kevon Presshaugh',
        '0 Surrey Point'
    );

insert into
    clientes (nombre, direccion)
values (
        'Bil Pakeman',
        '2874 Oak Parkway'
    );

insert into
    clientes (nombre, direccion)
values (
        'Madalyn Klejna',
        '31420 Moulton Street'
    );

insert into
    clientes (nombre, direccion)
values (
        'Aube Carryer',
        '43659 Haas Hill'
    );

CREATE Table
    ventas(
        id INT AUTO_INCREMENT PRIMARY KEY,
        monto DECIMAL(10, 2),
        id_cliente INT,
        Foreign Key (id_cliente) REFERENCES clientes(id)
    );

insert into ventas (monto, id_cliente) values (2769.55, 1);

insert into ventas (monto, id_cliente) values (8549.61, 2);

insert into ventas (monto, id_cliente) values (5560.27, 3);

insert into ventas (monto, id_cliente) values (6797.57, 4);

insert into ventas (monto, id_cliente) values (4211.07, 5);

SELECT * FROM clientes;

SELECT * FROM ventas;

SELECT * FROM clientes, ventas WHERE clientes.id = ventas.id_cliente;
SELECT * FROM clientes, ventas WHERE clientes.id = ventas.id_cliente AND monto BETWEEN 5000 AND 8000;

-- **Many to Many

CREATE Table departamentos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

insert into departamentos (nombre) values ('Jenkins-Pfeffer');
insert into departamentos (nombre) values ('Cormier Inc');
insert into departamentos (nombre) values ('Lang Group');
insert into departamentos (nombre) values ('Hoeger Group');
insert into departamentos (nombre) values ('Nicolas-Hackett');

CREATE Table empleados(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    id_departamentos INT,
    Foreign Key (id_departamentos) REFERENCES  departamentos(id)
);

insert into empleados (nombre, apellido, id_departamentos) values ('Sunny', 'Soigne', 1);
insert into empleados (nombre, apellido, id_departamentos) values ('Arlina', 'Panichelli', 2);
insert into empleados (nombre, apellido, id_departamentos) values ('Florella', 'Knowlman', 3);
insert into empleados (nombre, apellido, id_departamentos) values ('Mata', 'Braunlein', 4);
insert into empleados (nombre, apellido, id_departamentos) values ('Alicia', 'Lipp', 5);

SELECT * FROM empleados, departamentos WHERE empleados.id_departamentos = departamentos.id;
