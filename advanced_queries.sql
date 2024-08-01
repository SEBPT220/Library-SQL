-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT books.*, authors.*
FROM books
JOIN authors ON books.author_id = authors.id
WHERE authors.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT books.*, authors.*
FROM books
JOIN authors ON books.author_id = authors.id
WHERE authors.name = 'Milan Kundera';
-- Find all books written by an author from China or the UK.
SELECT books.*, authors.*
FROM books
JOIN authors ON books.author_id = authors.id
WHERE authors.birth_country IN ('China', 'United Kingdom');
-- Find out how many books Albert Camus wrote.
SELECT COUNT(*) AS book_count FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Albert Camus';
-- Find out how many books were written by US authors.
SELECT COUNT(*) AS book_count FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'United States of America';
-- Find all books written after 1930 by authors from Argentina.
Select books.*, authors.* FROM books JOIN authors ON books.author_id = authors.id WHERE books.publication_date > 1930 AND authors.nationality = 'Argentina'
-- Find all books written before 1980 by authors not from the US.
 Select books.*, authors.* FROM books JOIN authors ON books.author_id = authors.id WHERE books.publication_date < 1980 AND authors.nationality != 'United States of America';
-- Find all authors whose names start with 'J'.
 SELECT * FROM authors WHERE name LIKE 'J%';
-- Find all books whose titles contain 'the'.
 SELECT * FROM books WHERE title LIKE '%the%';
-- Find all authors who have written books that start with the letter 'N'.
 SELECT DISTINCT authors.* FROM books JOIN authors ON books.author_id = authors.id WHERE books.title LIKE 'N%';