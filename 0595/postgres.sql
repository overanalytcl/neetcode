CREATE SCHEMA IF NOT EXISTS lc_0595;

SET
    search_path TO lc_0595;

CREATE TABLE
    If NOT EXISTS world (
        name VARCHAR(255) PRIMARY KEY,
        continent VARCHAR(255),
        area INT,
        population INT,
        gdp BIGINT
    );

TRUNCATE TABLE world;

INSERT INTO
    world (name, continent, area, population, gdp)
VALUES
    (
        'Afghanistan',
        'Asia',
        '652230',
        '25500100',
        '20343000000'
    ),
    (
        'Albania',
        'Europe',
        '28748',
        '2831741',
        '12960000000'
    ),
    (
        'Algeria',
        'Africa',
        '2381741',
        '37100000',
        '188681000000'
    ),
    ('Andorra', 'Europe', '468', '78115', '3712000000'),
    (
        'Angola',
        'Africa',
        '1246700',
        '20609294',
        '100990000000'
    );

SELECT
    w.name,
    w.population,
    w.area
FROM
    world w
WHERE 
    w.area >= 3000000 OR w.population >= 25000000;