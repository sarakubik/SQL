select * from HPS

-- to return all values where you have no Null
select * from HPS
where EST_MSA IS NOT null
-- if you look on messages, this is ~22,000 of the 69,000 rows

-- to return all values where you have no blank values
select * from HPS
where len(EST_MSA) >0

-- substituting data with a specific value
-- first, let's look at the rows from KIDS_LT5Y that have -99s
select KIDS_LT5Y from HPS
WHERE KIDS_LT5Y = -99

-- Now let's change the -99 to missing
-- first duplicate the TNUM_PS column
select *, TNUM_PS as NEW_TNUM_PS FROM HPS

update HPS
set NEW_TNUM_PS = 'Missing'
WHERE NEW_TNUM_PS = -99;

select * from HPS


-- deletes -99 and -88 values
DELETE FROM wk_36
WHERE Telehealth = -99;

DELETE FROM wk_36
WHERE Telehealth = -88;