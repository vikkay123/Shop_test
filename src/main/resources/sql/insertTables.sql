--BOOKS
INSERT INTO public."Books" ("ISBN", "bookTitle", "bookType", "publishingYear", "pages", "price")
    VALUES ('978-5-6040043-6-4', 'Java. Полное руководство, 10-е издание', 'Печатная', '2018', '1488', '2984');
INSERT INTO public."Books" ("ISBN", "bookTitle", "bookType", "publishingYear", "pages", "price")
    VALUES ('978-5-496-01127-3', 'Философия Java. 4-е полное издание', 'Печатная', '2015', '1168', '3500');
INSERT INTO public."Books" ("ISBN", "bookTitle", "bookType", "publishingYear", "pages", "price")
    VALUES ('978-5-496-00867-9', 'Изучаем C#. 3-е издание', 'Печатная', '2014', '816', '1500');
INSERT INTO public."Books" ("ISBN", "bookTitle", "bookType", "publishingYear", "pages", "price")
    VALUES ('978-5-6041394-5-5', 'Java: руководство для начинающих', 'Печатная', '2019', '816', '1300');
INSERT INTO public."Books" ("ISBN", "bookTitle", "bookType", "publishingYear", "pages", "price")
    VALUES ('978-5-17-087885-7', 'Идиот', 'Печатная', '2021', '640', '192');
INSERT INTO public."Books" ("ISBN", "bookTitle", "bookType", "publishingYear", "pages", "price")
    VALUES ('978-5-17-090630-7', 'Преступление и наказание', 'Печатная', '2020', '672', '169');

--BOOKS_BY_AUTHORS
INSERT INTO public."BooksByAuthors" ("authorId", "ISBN") VALUES (1, '978-5-6040043-6-4');
INSERT INTO public."BooksByAuthors" ("authorId", "ISBN") VALUES (2, '978-5-496-01127-3');
INSERT INTO public."BooksByAuthors" ("authorId", "ISBN") VALUES (3, '978-5-496-00867-9');
INSERT INTO public."BooksByAuthors" ("authorId", "ISBN") VALUES (4, '978-5-496-00867-9');
INSERT INTO public."BooksByAuthors" ("authorId", "ISBN") VALUES (1, '978-5-6041394-5-5');
INSERT INTO public."BooksByAuthors" ("authorId", "ISBN") VALUES (5, '978-5-17-087885-7');
INSERT INTO public."BooksByAuthors" ("authorId", "ISBN") VALUES (5, '978-5-17-090630-7');

--GENRES
INSERT INTO public."Genres" ("ISBN", "genre") VALUES ('978-5-496-00867-9', 'Компьютеры и интернет');
INSERT INTO public."Genres" ("ISBN", "genre") VALUES ('978-5-496-01127-3', 'Компьютеры и интернет');
INSERT INTO public."Genres" ("ISBN", "genre") VALUES ('978-5-6041394-5-5', 'Компьютеры и интернет');
INSERT INTO public."Genres" ("ISBN", "genre") VALUES ('978-5-17-087885-7', 'Классическая русская литература');
INSERT INTO public."Genres" ("ISBN", "genre") VALUES ('978-5-17-090630-7', 'Классическая русская литература');

--AUTHORS_KEYS TABLE
INSERT INTO public."AuthorsKeys" ("authorId", "name") VALUES (1, 'Шилдт Герберт');
INSERT INTO public."AuthorsKeys" ("authorId", "name") VALUES (2, 'Эккель Брюс');
INSERT INTO public."AuthorsKeys" ("authorId", "name") VALUES (3, 'Стиллмен Эндрю');
INSERT INTO public."AuthorsKeys" ("authorId", "name") VALUES (4, 'Грин Дженнифер');
INSERT INTO public."AuthorsKeys" ("authorId", "name") VALUES (5, 'Достоевский Фёдор Михайлович');