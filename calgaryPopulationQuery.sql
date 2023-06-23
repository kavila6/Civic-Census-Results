-- Data exploration and cleaning; Deleting all rows that contain NULLs in any of the columns
SELECT *
  FROM [PersonalProjects].[dbo].[Civic_Census_Results_1958-2019]  
  
DELETE FROM [PersonalProjects].[dbo].[Civic_Census_Results_1958-2019]
  WHERE [Year] IS NULL
  OR [Dwellings] IS NULL
  OR [Residents] IS NULL
  OR [Vehicles] IS NULL
  OR [Age 65 +] IS NULL
  OR [Voters] IS NULL
  OR [CENSUS_YEAR] IS NULL

-- Columns of interest are [Year], [Dwellings], and [Residents] to observe and analyze the population overtime since 1958
SELECT [Year], [Dwellings], [Residents]
 FROM [PersonalProjects].[dbo].[Civic_Census_Results_1958-2019];

-- Calculating the sum of total dwellings and total residents for each year
SELECT [Year], SUM([Dwellings]) AS TotalDwellings, SUM([Residents]) AS TotalResidents
 FROM [PersonalProjects].[dbo].[Civic_Census_Results_1958-2019]
 GROUP BY [Year];