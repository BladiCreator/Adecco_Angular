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

SELECT * FROM estudiantes, cursos WHERE estudiantes.id = cursos.id_estudiante;

-- **One to many



-- **Many to Many