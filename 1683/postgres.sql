CREATE SCHEMA IF NOT EXISTS lc_1683;

SET
    search_path TO lc_1683;

CREATE TABLE
    IF NOT EXISTS tweets (tweet_id INT PRIMARY KEY, content VARCHAR);

TRUNCATE TABLE tweets;

INSERT INTO
    tweets (tweet_id, content)
VALUES
    ('1', 'Vote for Biden'),
    ('2', 'Let us make America great again!');

SELECT
    t.tweet_id
FROM
    tweets t
WHERE
    LENGTH (t.content) > 15;