/****** Check that HR Feed data exported from FIS match values imported into Elements  ******/
select count(*)
 FROM "FACDB"..FACULTY_TEST.ELEMENTS_HR_FEED_VIEW f,
      [elements-test-reporting].[dbo].[User] e
WHERE e.[Is Current Staff] = 1
  AND e.[Is Local] = 0
  AND e.[Proprietary ID] = f.[FIS_ID]
  -- AND e.[Academic Rank] collate database_default = f.[ACADEMIC_RANK]
  AND e.[Email] collate database_default = f.[EMAIL_ADDRESS]
  AND e.[Faculty Type] collate database_default = f.[FACULTY_TYPE]
  AND e.[First Name] collate database_default = f.[FIRST_NAME]
  AND e.[Home Department] collate database_default = f.[HOME_DEPT]
  AND e.[Initials] collate database_default = f.[INITIALS]
  AND e.[Last First Name] collate database_default = f.[LASTFIRSTNAME]
  AND e.[Last Name] collate database_default = f.[LAST_NAME]
  AND e.[Primary Affiliation] collate database_default = f.[PRIMARYAFFILIATION]
  AND e.[Primary Group Descriptor] collate database_default = f.[ELEMENTS_PRIMARY_GROUP]
  AND e.[Proprietary ID] collate database_default = f.[FIS_ID]
  AND e.[Tenure Locus] collate database_default = f.[TENURE_LOCUS]
  AND (e.[Tenure Second Locus] collate database_default = f.[TENURE_SECOND_LOCUS]
   OR (e.[Tenure Second Locus] IS NULL AND f.[TENURE_SECOND_LOCUS] IS NULL))
  AND e.[Username] collate database_default = f.[IDENTIKEY_USERNAME]
  ;

select f.[ACADEMIC_RANK]
      ,f.[EMAIL_ADDRESS]
      ,f.[FACULTY_TYPE]
      ,f.[FIRST_NAME]
      ,f.[HOME_DEPT]
      ,f.[INITIALS]
      ,f.[LASTFIRSTNAME]
      ,f.[LAST_NAME]
      ,f.[PRIMARYAFFILIATION]
      ,f.[ELEMENTS_PRIMARY_GROUP]
      ,f.[FIS_ID]
      ,f.[TENURE_LOCUS]
      ,f.[TENURE_SECOND_LOCUS]
      ,f.[IDENTIKEY_USERNAME]
 FROM "FACDB"..FACULTY_TEST.ELEMENTS_HR_FEED_VIEW f,
      [elements-test-reporting].[dbo].[User] e
WHERE e.[Is Current Staff] = 1
  AND e.[Is Local] = 0
  AND e.[Proprietary ID] = f.[FIS_ID]
  -- AND e.[Academic Rank] collate database_default = f.[ACADEMIC_RANK]
  AND e.[Email] collate database_default = f.[EMAIL_ADDRESS]
  AND e.[Faculty Type] collate database_default = f.[FACULTY_TYPE]
  AND e.[First Name] collate database_default = f.[FIRST_NAME]
  AND e.[Home Department] collate database_default = f.[HOME_DEPT]
  AND e.[Initials] collate database_default = f.[INITIALS]
  AND e.[Last First Name] collate database_default = f.[LASTFIRSTNAME]
  AND e.[Last Name] collate database_default = f.[LAST_NAME]
  AND e.[Primary Affiliation] collate database_default = f.[PRIMARYAFFILIATION]
  AND e.[Primary Group Descriptor] collate database_default = f.[ELEMENTS_PRIMARY_GROUP]
  AND e.[Proprietary ID] collate database_default = f.[FIS_ID]
  AND e.[Tenure Locus] collate database_default = f.[TENURE_LOCUS]
  AND (e.[Tenure Second Locus] collate database_default = f.[TENURE_SECOND_LOCUS]
   OR (e.[Tenure Second Locus] IS NULL AND f.[TENURE_SECOND_LOCUS] IS NULL))
  AND e.[Username] collate database_default = f.[IDENTIKEY_USERNAME]
  ;
