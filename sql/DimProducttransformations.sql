-- cleansed dim_products table --
SELECT 
	p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode 
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [Product_name],
	  ps.EnglishProductSubcategoryName AS [Sub_category],-- joined in from category table
	  pc.EnglishProductCategoryName AS [Product_Category],-- joined in from category table
      --,ps.[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] AS Product_color
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS Product_size
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS Product_line
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS Product_model_name
      --,[LargePhoto]
      ,p.[EnglishDescription] AS Product_description
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL (p.Status,'Oudated') AS Product_status
  FROM [dbo].[DimProduct] AS p
	LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER by
	p.ProductKey asc
