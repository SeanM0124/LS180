/*
Write SQL statements to insert the following new books into the database.
What do you need to do to ensure this data fits in the database?

First i need to ensure that the books table can fit text of these lengths.

 1 | Nonfiction
  2 | Fiction
  3 | Fantasy
  4 | Classics
  5 | Biography
  6 | Physics

*/

INSERT INTO BOOKS(author, title)
VALUES('Lynn Sherr', 'Sally Ride: America''s First Woman in Space'), ('Charlotte Brontë', 'Jane Eyre'),
('Meeru Dhalwala and Vikram Vij', 'Vij''s: Elegant and Inspired Indian Cuisine');

INSERT INTO categories(name)
VALUES('Space Exploration'), ('Cookbook'), ('South Asia');

INSERT INTO books_categories(book_id, category_id)
VALUES(4, 5),
(4, 1),
(5, 2),
(5, 4),
(6, 1);

INSERT INTO books_categories(book_id, category_id)
VALUES(4, 7), (6, 8), (6, 9);