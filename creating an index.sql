-- from https://www.w3schools.com/sql/sql_create_index.asp

select * from HPS

-- create a unique index
CREATE INDEX index_ID
ON HPS (SCRAM);

-- to drop an index
DROP INDEX HPS.index_ID;


