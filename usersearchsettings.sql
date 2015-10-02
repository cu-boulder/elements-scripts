select distinct u.ID, u.[Last Name], u.[First Name], d.Affiliation, o.[Affiliation Override], d.Author, d.Journal, d.Keyword, d.[Start Date] 
from [User] u, [User Search Term Defaults] d, [User Search Term Overrides] o 
where 
--upper(u.[Last Name]) like '%LOAD%' and 
u.ID = d.[User ID] and u.ID = o.[User ID]
order by u.[Last Name]
