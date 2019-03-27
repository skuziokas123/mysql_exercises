
--1
CREATE TABLE books_authors (book_id INT NOT NULL, author_id INT NOT NULL, PRIMARY KEY(book_id, author_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = MyISAM;



--2
INSERT INTO books_authors (book_id,author_id) 
SELECT bookId,authorId FROM books WHERE authorId IS NOT NULL;

ALTER TABLE books DROP authorId;

INSERT INTO `books_authors` (`book_id`, `author_id`) VALUES ('1', '2'), ('2', '1');


--3
SELECT `books`.title,GROUP_CONCAT(`authors`.name SEPARATOR ', ')
FROM books
INNER JOIN books_authors ON `books_authors`.book_id=`books`.bookId
INNER JOIN authors ON `authors`.authorId=`books_authors`.author_id
WHERE `authors`.name IS NOT NULL
GROUP BY `books`.bookId;


--4
ALTER TABLE books CHANGE title title VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci;
