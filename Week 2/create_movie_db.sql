DROP DATABASE IF EXISTS data607_movies;
CREATE DATABASE data607_movies;
USE data607_movies;

CREATE TABLE people (
person_id TINYINT UNSIGNED AUTO_INCREMENT,
person_name VARCHAR(40),
person_age INT DEFAULT 999,
person_movie_genre VARCHAR(10),
PRIMARY KEY (person_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE surveys (
survey_id TINYINT UNSIGNED AUTO_INCREMENT,
survey_name VARCHAR(20),
PRIMARY KEY (survey_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE questions (
question_id TINYINT UNSIGNED AUTO_INCREMENT,
question VARCHAR(140),
survey_id TINYINT,
question_short VARCHAR(20),
PRIMARY KEY (question_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE responses (
response_id TINYINT UNSIGNED AUTO_INCREMENT,
response VARCHAR(40),
person_id TINYINT,
survey_id TINYINT,
question_id TINYINT,
PRIMARY KEY (response_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/person.csv" 
INTO TABLE data607_movies.people
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(person_id, person_name, @vperson_age, person_movie_genre)
SET person_age = nullif(@vperson_age,'');

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/questions.csv" 
INTO TABLE data607_movies.questions
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(question_id, question, survey_id, question_short);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/responses.csv" 
INTO TABLE data607_movies.responses
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(response_id, response, person_id, survey_id, question_id);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/surveys.csv" 
INTO TABLE data607_movies.surveys
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(survey_id, survey_name);