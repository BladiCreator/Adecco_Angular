CREATE DATABASE IF NOT EXISTS school_library;

-- Tabla books: Esta tabla almacenará información sobre los libros disponibles en la biblioteca.

-- Campos: book_id (clave primaria), title, author, year_of_publication.

CREATE TABLE
    IF NOT EXISTS books(
        book_id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(100) NOT NULL,
        author VARCHAR(100),
        year_of_publication DATE
    );

-- Tabla students: Para registrar a los estudiantes que utilizan la biblioteca.

-- Campos: student_id (clave primaria), first_name, last_name, grade.

CREATE TABLE
    IF NOT EXISTS students(
        student_id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        grade INT NOT NULL
    );

-- Tabla loans: Para controlar los préstamos de libros a los estudiantes.

-- Campos: loan_id (clave primaria), book_id (clave foránea de books), student_id (clave foránea de students), loan_date, return_date.

CREATE TABLE
    IF NOT EXISTS loans(
        loan_id INT AUTO_INCREMENT PRIMARY KEY,
        book_id INT NOT NULL,
        student_id INT NOT NULL,
        loan_date DATE NOT NULL,
        return_date DATE,
        Foreign Key (book_id) REFERENCES books(book_id),
        Foreign Key (student_id) REFERENCES students(student_id)
    );

-- Tabla categories: Clasifica los libros en diferentes categorías.

-- Campos: category_id (clave primaria), category_name.

CREATE TABLE
    IF NOT EXISTS categories(
        category_id INT AUTO_INCREMENT PRIMARY KEY,
        category_name VARCHAR(50) NOT NULL UNIQUE
    );

-- Tabla book_categories: Para asociar libros con múltiples categorías.

-- Campos: book_id (clave foránea de books), category_id (clave foránea de categories).

CREATE TABLE
    IF NOT EXISTS book_categories(
        book_id INT,
        category_id INT,
        Foreign Key (book_id) REFERENCES books(book_id),
        Foreign Key (category_id) REFERENCES categories(category_id)
    );