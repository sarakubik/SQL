select * from HPS

-- First add a new column ...
ALTER TABLE HPS
ADD "New_Kids" varchar(50);

-- note you can also do this
-- in Object Explorer, right click on your database and select 'Design', add a new
-- column "New_Kids"... be sure to select data type

-- if we needed to change the data type 
ALTER TABLE HPS
ALTER COLUMN New_Kids int;