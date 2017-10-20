/*
This script collects all user search settings. Run this before and after an upgrade or patch. Save the file and run checksums and/or diffs to compare results before and after an upgrade.
*/
select distinct u.ID, u.[Last Name], u.[First Name], d.Affiliation, o.[Affiliation Override], d.Author, d.Journal, d.Keyword, d.[Start Date] 
from [User] u, [User Search Term Defaults] d, [User Search Term Overrides] o 
where 
--upper(u.[Last Name]) like '%LOAD%' and 
u.ID = d.[User ID] and u.ID = o.[User ID]
order by u.[Last Name]
