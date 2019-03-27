
-- 1
SELECT * FROM `books`;

--2
SELECT `books`.`title` FROM `books` ORDER BY `books`.`title` ASC;

--3
SELECT COUNT(bookId), authorId
FROM books
GROUP BY authorId;