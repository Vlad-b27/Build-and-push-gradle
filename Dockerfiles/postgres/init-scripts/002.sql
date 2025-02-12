-- 002_insert_sample_data.sql
INSERT INTO countries (name, population, area, continent)
VALUES
    ('USA', 331002651, 9833517, 'North America'),
    ('Canada', 37742154, 9984670, 'North America'),
    ('Germany', 83783942, 357022, 'Europe'),
    ('Japan', 126476461, 377975, 'Asia');

INSERT INTO cities (name, country_id, population, is_capital)
VALUES
    ('New York', 1, 8175133, FALSE),
    ('Los Angeles', 1, 3792621, FALSE),
    ('Washington, D.C.', 1, 705749, TRUE),
    ('Toronto', 2, 2731571, TRUE),
    ('Berlin', 3, 3769495, TRUE),
    ('Tokyo', 4, 13929286, TRUE);

INSERT INTO trips (destination_city_id, start_date, end_date, description)
VALUES
    (1, '2025-03-15', '2025-03-22', 'Business trip to New York'),
    (2, '2025-04-01', '2025-04-07', 'Vacation in Los Angeles'),
    (3, '2025-05-10', '2025-05-15', 'Conference in Washington, D.C.');
