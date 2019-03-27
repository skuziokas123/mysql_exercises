 
--1
SELECT `books`.authorId FROM books
UNION
SELECT `authors`.authorId FROM authors;