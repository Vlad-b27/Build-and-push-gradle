-- 001_create_tables.sql
CREATE TABLE IF NOT EXISTS countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    population INT,
    area INT,
    continent VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country_id INT REFERENCES countries(id),
    population INT,
    is_capital BOOLEAN
);

CREATE TABLE IF NOT EXISTS trips (
    id SERIAL PRIMARY KEY,
    destination_city_id INT REFERENCES cities(id),
    start_date DATE,
    end_date DATE,
    description TEXT
);
