CREATE TABLE books_authors (book_id INT NOT NULL, author_id INT NOT NULL, PRIMARY KEY(book_id, author_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = MyISAM;

INSERT INTO books_authors (book_id,author_id) 
SELECT bookId,authorId FROM books WHERE authorId IS NOT NULL;

ALTER TABLE books DROP authorId;