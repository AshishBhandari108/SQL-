--\
-- Table: Employee\
-- +-------------+---------+\
-- | Column Name | Type    |\
-- +-------------+---------+\
-- | empId       | int     |\
-- | name        | varchar |\
-- | supervisor  | int     |\
-- | salary      | int     |\
-- +-------------+---------+\
-- empId is the primary key column for this table.\
-- Each row indicates an employee, their salary, and the id of their manager.\
--\
-- Table: Bonus\
-- +-------------+------+\
-- | Column Name | Type |\
-- +-------------+------+\
-- | empId       | int  |\
-- | bonus       | int  |\
-- +-------------+------+\
-- empId is the primary key column for this table.\
-- empId is a foreign key to Employee.empId.\
-- Each row contains an employee's bonus.\
--\
-- Task:\
-- Write an SQL query to report the name and bonus amount of each employee\
-- with a bonus less than 1000.\
-- Include employees who do not have a bonus record (bonus should appear as NULL).\
--\
-- Output:\
-- +------+-------+\
-- | name | bonus |\
-- +------+-------+\
\
SELECT e.name, b.bonus\
FROM Employee e\
LEFT JOIN Bonus b\
  ON e.empId = b.empId\
WHERE b.bonus < 1000 OR b.bonus IS NULL;\
}