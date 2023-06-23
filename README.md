# Civic Census Results Analysis

This repository contains SQL queries for analyzing calgary population results from the table [Civic_Census_Results_1958-2019] in the [PersonalProjects].[dbo] database.

## Table Structure

The table [Civic_Census_Results_1958-2019] consists of the following columns:

- [Year]: The year of the census data.
- [Dwellings]: The number of dwellings recorded in the census.
- [Residents]: The number of residents recorded in the census.
- [Vehicles]: The number of vehicles recorded in the census.
- [Age 65+]: The number of residents aged 65 or above recorded in the census.
- [Voters]: The number of eligible voters recorded in the census.
- [CENSUS_YEAR]: The year of the census.

## Query

The SQL query provided calculates the sum of [Dwellings] and [Residents] for each unique [Year] in the [Civic_Census_Results_1958-2019] table. The query is as follows:

```sql
SELECT [Year], SUM([Dwellings]) AS TotalDwellings, SUM([Residents]) AS TotalResidents
FROM [PersonalProjects].[dbo].[Civic_Census_Results_1958-2019]
GROUP BY [Year];
