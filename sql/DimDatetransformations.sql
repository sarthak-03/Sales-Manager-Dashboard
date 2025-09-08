--je chope les colonnes dont j'ai besoin et le reste je le commente
SELECT  [DateKey]
      ,[FullDateAlternateKey] AS Date
     -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
     -- ,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS Weeknbr
      ,[EnglishMonthName] AS Monthh
      --,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Monthnbr
      ,[CalendarQuarter]
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      ,[FiscalQuarter]
      --,[FiscalYear]
      ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear >=2019
