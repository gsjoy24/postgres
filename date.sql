-- Active: 1712930731361@@127.0.0.1@5432@test
SHOW TIMEZONE

SELECT now();

create Table timeZ (ts TIMESTAMP without TIME zone, tsz TIMESTAMP with time zone)

INSERT INTO timeZ VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00')

SELECT * FROM timeZ

SELECT CURRENT_DATE

SELECT now()::date

SELECT now()::time

SELECT to_char(now(),'HH12:MI:SS')

SELECT to_char(now(),'yyyy-mm-dd')

SELECT CURRENT_DATE - INTERVAL '1 year'

SELECT age(CURRENT_DATE, '2003-03-30') 