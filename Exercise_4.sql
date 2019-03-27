
--1
SELECT COUNT(`books`.bookId), `authors`.authorId
FROM books
RIGHT JOIN authors ON `authors`.authorId=`books`.authorId
GROUP BY `authors`.authorId;

SELECT COUNT(`books`.bookId), `authors`.authorId
FROM books
LEFT JOIN authors ON `authors`.authorId=`books`.authorId
GROUP BY `authors`.authorId;

--2
DELETE FROM authors WHERE `authors`.authorId IN (
    SELECT * FROM (
			SELECT `authors`.authorId
			FROM books
			RIGHT JOIN authors ON `authors`.authorId=`books`.authorId
			WHERE `books`.bookId IS NULL 
    ) AS aa
);