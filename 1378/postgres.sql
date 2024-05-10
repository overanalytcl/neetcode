CREATE SCHEMA IF NOT EXISTS lc_1378;

SET
    search_path TO lc_1378;

CREATE TABLE
    IF NOT EXISTS Employees (id INT PRIMARY KEY, name VARCHAR);

TRUNCATE TABLE Employees;

INSERT INTO
    Employees (id, name)
VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');

CREATE TABLE
    IF NOT EXISTS EmployeeUNI (
        id INT,
        unique_id INT,
        CONSTRAINT empl_uni_pk PRIMARY KEY (id, unique_id)
    );

TRUNCATE TABLE EmployeeUNI;

INSERT INTO
    EmployeeUNI (id, unique_id)
VALUES
    (3, 1),
    (11, 2),
    (90, 3);

SELECT
    unique_id,
    name
FROM
    employees e
    LEFT JOIN employeeuni u ON u.id = e.id;