-- Cleansed Dim_customers table --

SELECT
    c.CustomerKey,
    -- [GeographyKey],
    -- [CustomerAlternateKey],
    -- [Title],
    c.FirstName,
    c.MiddleName,
    c.LastName,
    c.FirstName + ' ' + c.LastName AS [Full_Name],
    -- [NameStyle],
    -- [BirthDate],
    c.MaritalStatus,
    CASE c.Gender 
        WHEN 'M' THEN 'Male' 
        WHEN 'F' THEN 'Female' 
    END AS Gender,
    -- [EmailAddress],
    -- [YearlyIncome],
    -- [TotalChildren],
    -- [NumberChildrenAtHome],
    -- [EnglishEducation],
    -- [SpanishEducation],
    -- [FrenchEducation],
    -- [EnglishOccupation],
    -- [SpanishOccupation],
    -- [FrenchOccupation],
    -- [HouseOwnerFlag],
    -- [NumberCarsOwned],
    -- [AddressLine1],
    -- [AddressLine2],
    -- [Phone],
    c.DateFirstPurchase,
    -- [CommuteDistance],
    g.city AS [Customer city] -- joined in customer city from geography table
FROM 
    [AdventureWorksDW2019].dbo.DimCustomer AS c
LEFT JOIN 
    [AdventureWorksDW2019].dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
    CustomerKey ASC; -- Ordered list by customerkey

