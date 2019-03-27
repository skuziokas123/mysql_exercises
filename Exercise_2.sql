
--1
INSERT INTO `authors` (`authorId`, `name`) VALUES ('8', 'Robert C. Martin'), ('9', 'Matt Zandstra');

--2
INSERT INTO `books` (`bookId`, `authorId`, `title`, `year`) VALUES 
('9', '8', 'Clean Code', '2008'), 
('10', '9', 'PHP Objects, Patterns, and Practice, Furth Edition', '2013'),
('11', '9', 'PHP Objects, Patterns, and Practice, Fifth Edition', '2016');

--3
UPDATE `books` SET `authorId` = '8' WHERE `books`.`bookId` = 10;