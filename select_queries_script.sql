--Basic Select
-- View all data from Books
SELECT * FROM Books;

--Select specific columns
-- Show only titles and status of books
SELECT Title, Status FROM Books;

--Filter using WHERE
-- Get all members who joined after Jan 1, 2024
SELECT * FROM Members
WHERE JoinDate > '2024-01-01';

--Use AND / OR
-- Get books that are either 'Reserved' or 'Loaned'
SELECT * FROM Books
WHERE Status = 'Reserved' OR Status = 'Loaned';

-- Members with gmail and joined after 2023
SELECT * FROM Members
WHERE Email LIKE '%gmail.com' AND JoinDate > '2023-01-01';

 --LIKE Operator
-- Find members whose names start with 'A'
SELECT * FROM Members
WHERE Name LIKE 'A%';

-- BETWEEN Operator
-- Get loans between two dates
SELECT * FROM Loans
WHERE LoanDate BETWEEN '2024-01-01' AND '2024-03-01';

--ORDER BY
--Sort books alphabetically by title
SELECT * FROM Books
ORDER BY Title ASC;

-- Sort fines by amount (highest first)
SELECT * FROM Fines
ORDER BY Amount DESC;

--LIMIT rows
-- Show only top 3 most recently joined members
SELECT * FROM Members
ORDER BY JoinDate DESC
LIMIT 3;

--Using Aliasing
-- Display member names and emails with aliases
SELECT Name AS MemberName, Email AS ContactEmail
FROM Members;

--DISTINCT
-- Show all unique book statuses
SELECT DISTINCT Status FROM Books;

