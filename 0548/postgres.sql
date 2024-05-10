CREATE SCHEMA IF NOT EXISTS lc_0584;

SET
    search_path TO lc_0584;

CREATE TABLE
    IF NOT EXISTS customer (
        id int PRIMARY KEY,
        name varchar(25),
        referee_id int
    );

TRUNCATE TABLE customer;

INSERT INTO
    customer (id, name, referee_id)
VALUES
    (1, 'Will', NULL),
    (2, 'Jane', NULL),
    (3, 'Alex', 2),
    (4, 'Bill', NULL),
    (5, 'Zack', 1),
    (6, 'Mark', 2);

SELECT
    c.name
FROM
    customer c
WHERE
    c.referee_id IS DISTINCT
FROM
    2;