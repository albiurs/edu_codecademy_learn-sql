CREATE TABLE friends (
                         id INTEGER,
                         name TEXT,
                         birthday DATE
);

INSERT INTO friends
VALUES (
           1,
           'Jane Doe',
           '1990-05-30'
       );

INSERT INTO friends
VALUES (
           2,
           'Stephan Baumann',
           '1971-02-05'
       );

INSERT INTO friends
VAlUES (
           3,
           'Christa Baumann',
           '1978-06-2'
       );

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

ALTER TABLE friends
    ADD COLUMN email TEXT;

UPDATE friends
SET email = 'jane@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'stephan@mail.com'
WHERE id = 2;

UPDATE friends
SET email = 'christa@mail.org'
WHERE id = 3;

DELETE from friends
WHERE id = 1;

SELECT *
FROM friends;
