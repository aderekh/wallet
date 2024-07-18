-- Создание базы данных
CREATE DATABASE LibraryDB;
-- Создание таблиц (после подключения к LibraryDB)
CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birthdate DATE
);
CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    publication_date DATE,
    genre VARCHAR(255),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE Readers (
    reader_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    registration_date DATE
);
CREATE TABLE Borrowings (
    borrowing_id SERIAL PRIMARY KEY,
    book_id INT,
    reader_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (reader_id) REFERENCES Readers(reader_id)
);