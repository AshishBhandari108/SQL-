--\
-- Table: Courses\
-- +-------------+---------+\
-- | Column Name | Type    |\
-- +-------------+---------+\
-- | student     | varchar |\
-- | class       | varchar |\
-- +-------------+---------+\
-- (student, class) is the primary key.\
-- Each row indicates that a student is enrolled in a class.\
--\
-- Task:\
-- Report all classes that have at least five students.\
--\
-- Output:\
-- +---------+\
-- | class   |\
-- +---------+\
\
SELECT class\
FROM Courses\
GROUP BY class\
HAVING COUNT(*) >= 5;\
}