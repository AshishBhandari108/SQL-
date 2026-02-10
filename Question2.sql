--\
-- Table: Customer\
-- +-------------+---------+\
-- | Column Name | Type    |\
-- +-------------+---------+\
-- | id          | int     |\
-- | name        | varchar |\
-- | referee_id  | int     |\
-- +-------------+---------+\
-- id is the primary key column.\
-- Each row indicates a customer and who referred them (referee_id).\
--\
-- Task:\
-- Report the names of customers who are NOT referred by the customer with id = 2.\
-- Note: referee_id can be NULL, and those customers should be included.\
--\
-- Output:\
-- +------+\
-- | name |\
-- +------+\
\
SELECT name\
FROM Customer\
WHERE referee_id IS NULL OR referee_id <> 2;\
}