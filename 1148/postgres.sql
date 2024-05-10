CREATE SCHEMA IF NOT EXISTS lc_1148;

SET
    search_path TO lc_1148;

CREATE TABLE
    If NOT EXISTS views (
        article_id INT,
        author_id INT,
        viewer_id INT,
        view_date DATE
    );

TRUNCATE TABLE views;

INSERT INTO
    views (article_id, author_id, viewer_id, view_date)
VALUES
    (1, 3, 5, '2019-08-01'),
    (1, 3, 6, '2019-08-02'),
    (2, 7, 7, '2019-08-01'),
    (2, 7, 6, '2019-08-02'),
    (4, 7, 1, '2019-07-22'),
    (3, 4, 4, '2019-07-21'),
    (3, 4, 4, '2019-07-21');

SELECT DISTINCT
    v.author_id AS id
FROM
    views v
WHERE
    v.author_id = v.viewer_id
ORDER BY
    id;