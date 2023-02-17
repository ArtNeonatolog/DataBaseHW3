"Задание 1"

CREATE TABLE city (
city_id BIGSERIAL NOT NULL PRIMARY KEY,
city_name VARCHAR(60)
);

ALTER TABLE employee ADD COLUMN
city_id INT;

ALTER TABLE employee
ADD FOREIGN KEY (city_id) REFERENCES city(city_id);

INSERT INTO city (
city_name)
VALUES ('Ufa'), ('Moscow'), ('Ekaterinburg'),
('Kazan'), ('Volgograd'), ('Omsk');

"Задание 2"

SELECT first_name, last_name, city_name
FROM employee
INNER JOIN city
ON employee.city_id = city.city_id;

SELECT first_name, last_name, city_name
FROM employee
RIGHT JOIN city
ON employee.city_id = city.city_id;

SELECT first_name, city_name
FROM employee
FULL JOIN city
ON employee.city_id = city.city_id;

SELECT first_name, city_name
FROM employee
CROSS JOIN city;

