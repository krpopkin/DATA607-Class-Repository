# DATA607 Week2 Homework
 Class in CUNY Master of Data Science Program

HOMEWORK SUMMARY:
Choose six recent popular movies. Ask at least five people that you know (friends, family, classmates, imaginary friends if necessary) to rate each of these movies that they have seen on a scale of 1 to 5. Take the results (observations) and store them in a SQL database of your choosing. Load the information from the SQL database into an R dataframe.

WHAT I DID FOR THIS ASSIGNMENT:
1. Used Survey Gizmo for the survey (see raw data in the Data folder)

2. Designed the raw data to four relational tables, with each table in a csv file: person, questions, responses, surveys (see data in Data folder)

3. Wrote a sql script to create a database in MySQL, create the tables, and load the tables from the csv file

4. Wrote an R Markdown that connects to the database and reads each table into a dataframe.

5. In the R Markdown explored the data by answering the following questions via calculations and charts.  Missing data was handled via filtering out missing values for calculations and having a missing data bar in the charts.
   Surveys:
   1. How many surveys have been completed?

   Participants in Surveys
   2. How many participants were in each survey?
   3. What is the min, max, and average age of the participants?
   4. What is the distribution of favorite genres among the survey participants?

   The movies included in the survey:
   5. What is the distribution of responses for each movie?

