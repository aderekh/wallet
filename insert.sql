-- Заполнение таблицы Authors
INSERT INTO Authors (name, birthdate) VALUES
('J.K. Rowling', '1965-07-31'),
('George Orwell', '1903-06-25'),
('Agatha Christie', '1890-09-15'),
('J.R.R. Tolkien', '1892-01-03'),
('Leo Tolstoy', '1828-09-09');
-- Заполнение таблицы Books
INSERT INTO Books (title, author_id, publication_date, genre) VALUES
('Harry Potter and the Philosopher''s Stone', 1, '1997-06-26', 'Fantasy'),
('1984', 2, '1949-06-08', 'Dystopian'),
('Murder on the Orient Express', 3, '1934-01-01', 'Mystery'),
('The Lord of the Rings', 4, '1954-07-29', 'Fantasy'),
('War and Peace', 5, '1869-01-01', 'Historical Fiction'),
('Harry Potter and the Chamber of Secrets', 1, '1998-07-02', 'Fantasy'),
('Animal Farm', 2, '1945-08-17', 'Political Satire'),
('The Hobbit', 4, '1937-09-21', 'Fantasy'),
('The Silmarillion', 4, '1977-09-15', 'Fantasy'),
('The Murder of Roger Ackroyd', 3, '1926-06-01', 'Mystery');
-- Заполнение таблицы Readers
INSERT INTO Readers (name, registration_date) VALUES
('Alice Johnson', '2023-01-15'),
('Bob Smith', '2023-02-20'),
('Carol White', '2023-03-10'),
('David Brown', '2023-04-05'),
('Eve Davis', '2023-05-15');
-- Заполнение таблицы Borrowings
INSERT INTO Borrowings (book_id, reader_id, borrow_date, return_date) VALUES
(1, 1, '2024-07-01', NULL),
(2, 2, '2024-07-02', '2024-07-12'),
(3, 3, '2024-07-03', NULL),
(4, 4, '2024-06-20', '2024-07-01'),
(5, 5, '2024-07-05', NULL);