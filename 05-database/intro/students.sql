CREATE DATABASE ga;

-- sheet
CREATE TABLE students(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  gender VARCHAR(10)
);

INSERT INTO students (name, age, gender) VALUES ('code', 3, 'female');
INSERT INTO students (name, age, gender) VALUES ('dependent', 5, 'male');
INSERT INTO students (name, age, gender) VALUES ('cakepudding', 11, 'female');

SELECT * FROM students;
SELECT * FROM students WHERE age > 4;



