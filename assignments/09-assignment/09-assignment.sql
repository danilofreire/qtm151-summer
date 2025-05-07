-- QTM 151 - Assignment 09
-- Add your name here (use -- to comment)
-- Name:
-- Emory Id:

-- Using SQLite3 Editor or any other SQL client, run the following SQL script to create a new table.
-- Then answer the questions in the assignment.

DROP TABLE IF EXISTS "drivers";

CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    nationality VARCHAR(50),
    lap_times INT
);

INSERT INTO drivers (driver_id, driver_name, nationality, lap_times) VALUES
(1, 'Simon Cowell', 'British', 74),
(2, 'Fernando Alonso', 'Spanish', 26),
(3, 'Heinrich Bach', 'German', 82),
(4, 'Giorgio Soprano', 'Spanish', 87),
(5, 'Lewis Hamilton', 'British', 103),
(6, 'Henry Louvre', 'British', 32),
(7, 'Sebastian Vettel', 'German', 91),
(8, 'Lukas Zech', 'German', 53),
(9, 'Donic Kovak', 'German', 11),
(10, 'Michael Holzmieter', 'German', 24);

-- Question 1: Write an SQL query to select all columns from the drivers table.

-- Question 2: Write an SQL query to retrieve only the driver_name and nationality of all drivers.

-- Question 3: Write an SQL query to find all drivers with the nationality 'German'.

-- Question 4: Write an SQL query to select drivers who have completed more than 50 lap times.

-- Question 5: Write an SQL query to count the number of drivers from each nationality.

-- Question 6: Write an SQL query to find the driver with the highest number of lap times.

-- Question 7: Write an SQL query to list all drivers ordered by their lap times in descending order.

-- Question 8: Write an SQL statement to insert a new driver with driver_id 11, driver_name 'Jenson Button', nationality 'British', and lap_times 45.

-- Question 9: Write an SQL query to calculate the average number of lap times of all drivers.

-- Question 10: Question 13: Write an SQL query to find drivers whose lap times are between 20 and 80.

-- Submit the SQL queries for the questions above.