  SELECT TOP 1000 u.[Proprietary_ID], s.[Name],count(*)
  FROM [elements-dev].[dbo].[USER_tblIdentifier] i, USER_tblUser u, [DEF_tblIdentifierScheme] s
  where u.ID = [User_ID] and s.ID = i.[IdentifierScheme_ID]
--  and [IdentifierScheme_ID] = 9
--  and [Decision_ID] is NULL
  group by u.[Proprietary_ID],s.[Name]
  order by 3 desc
