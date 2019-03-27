
--1
CREATE TABLE books_authors (book_id INT NOT NULL, author_id INT NOT NULL, PRIMARY KEY(book_id, author_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = MyISAM;



--2
INSERT INTO books_authors (book_id,author_id) 
SELECT bookId,authorId FROM books WHERE authorId IS NOT NULL

ALTER TABLE books DROP authorId;

INSERT INTO `books_authors` (`book_id`, `author_id`) VALUES ('1', '2'), ('2', '1');


--3
SELECT `books`.title,GROUP_CONCAT(`authors`.name SEPARATOR ', ')
FROM books
INNER JOIN books_authors ON `books_authors`.book_id=`books`.bookId
INNER JOIN authors ON `authors`.authorId=`books_authors`.author_id
WHERE `authors`.name IS NOT NULL
GROUP BY `books`.bookId

















SELECT `books`.title,GROUP_CONCAT(`authors`.name SEPARATOR ', ')
FROM authors
INNER JOIN books_authors ON `books_authors`.author_id=`authors`.authorId
INNER JOIN books ON `books`.bookId=`books_authors`.book_id
GROUP BY `books`.bookId





SELECT `books`.bookId,`books`.title,GROUP_CONCAT(`authors`.name SEPARATOR ', ')
SELECT `books`.bookId,`books`.title,`authors`.name
FROM authors
INNER JOIN books_authors ON `books_authors`.author_id=`authors`.authorId
INNER JOIN books ON `books`.bookId=`books_authors`.book_id
WHERE `authors`.name IS NOT NULL
GROUP BY `authors`.name



SELECT `books`.bookId,`books`.title,GROUP_CONCAT(`authors`.name SEPARATOR ', ')
FROM books
INNER JOIN books_authors ON `books_authors`.book_id=`books`.bookId
INNER JOIN authors ON `authors`.authorId=`books_authors`.author_id
WHERE `authors`.name IS NOT NULL
GROUP BY `authors`.authorId




SELECT id, GROUP_CONCAT(string SEPARATOR ' ') FROM table GROUP BY id;







CREATE TABLE booksauthors_authors (authors_id INT NOT NULL, bookId INT NOT NULL, INDEX IDX_45BBAAE0A33F7DF7 (bookId), INDEX IDX_45BBAAE06DE2013A (authors_id), PRIMARY KEY(bookId, authors_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB;
ALTER TABLE booksauthors_authors ADD CONSTRAINT FK_45BBAAE0A33F7DF7 FOREIGN KEY (bookId) REFERENCES books (authorId);
ALTER TABLE booksauthors_authors ADD CONSTRAINT FK_45BBAAE06DE2013A FOREIGN KEY (authors_id) REFERENCES authors (id) ON DELETE CASCADE;

CREATE TABLE books_authors (book_id INT NOT NULL, authors_id INT NOT NULL, INDEX IDX_877EACC216A2B381 (book_id), INDEX IDX_877EACC26DE2013A (authors_id), PRIMARY KEY(book_id, authors_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB;

insert into table_2 (itemid,location1) 
select itemid,quantity from table_1 where locationid=1

ALTER TABLE books DROP authorId;