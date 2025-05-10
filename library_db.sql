-- Create the database
CREATE DATABASE library_db;
USE library_db;

-- Authors Table
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT
);

-- Books Table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    isbn VARCHAR(13) UNIQUE NOT NULL,
    published_year INT,
    copies_available INT NOT NULL DEFAULT 0
);

-- Book_Authors Table (Many-to-Many)
CREATE TABLE book_authors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE CASCADE
);

-- Create the Members Table
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    membership_date DATE NOT NULL
);

-- Staff Table
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    hire_date DATE
);

-- Borrow Records Table
CREATE TABLE borrow_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    staff_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

-- Sample Data
INSERT INTO authors (name, bio) VALUES
('J.K. Rowling', 'Author of the Harry Potter series.'),
('George Orwell', 'Author of 1984 and Animal Farm.');

INSERT INTO books (title, isbn, published_year, copies_available) VALUES
('Harry Potter and the Sorcerer\'s Stone', '9780747532699', 1997, 3),
('1984', '9780451524935', 1949, 2);

INSERT INTO book_authors (book_id, author_id) VALUES
(1, 1),
(2, 2);

INSERT INTO members (name, email, membership_date) VALUES
('Alice Johnson', 'alice@example.com', CURDATE()),
('Bob Smith', 'bob@example.com', CURDATE());

INSERT INTO staff (name, role, hire_date) VALUES
('Clara Oswald', 'Librarian', '2020-01-15'),
('John Doe', 'Assistant', '2021-06-10');

INSERT INTO borrow_records (book_id, member_id, staff_id, borrow_date) VALUES
(1, 1, 1, '2025-04-01'),
(2, 2, 2, '2025-04-03');



