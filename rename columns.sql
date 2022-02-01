select * from HPS

--renames columns to be more easily understandable
sp_rename 'HPS.TELEHLTH', 'Telehealth', 'COLUMN'
sp_rename 'HPS.TBIRTH_Year', 'Year_Born', 'COLUMN'
sp_rename 'HPS.EST_ST', 'State', 'COLUMN'
sp_rename 'HPS.WEEK', 'Week', 'COLUMN'