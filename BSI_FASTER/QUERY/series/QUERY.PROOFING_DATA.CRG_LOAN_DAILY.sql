DECLARE @TABLE_CUR VARCHAR(MAX), @NOMORCIF VARCHAR(MAX)='52567810', @SUPERCIF VARCHAR(MAX)='', @POINTER INT = 1, @TGL_DATA DATE = '2023-06-01', @SQL_QUERY VARCHAR(MAX);

CREATE TABLE #RESULT (
	[TGL_DATA] DATE
	,[NOLOAN] VARCHAR(255)
	,[NomorCIF] VARCHAR(255)
	,[NomorCIF_Super] VARCHAR(255)
	,[NAMANASABAH] VARCHAR(255)
	,[KodeOutlet_BSI] VARCHAR(255)
	,[Nama_Outlet_BSI] VARCHAR(255)
	,[Area_BSI] VARCHAR(255)
	,[Regional_BSI] VARCHAR(255)
	,[Segmen_BSI] VARCHAR(255)
	,[Produk_BSI] VARCHAR(255)
	,[Produk_BSI_Detail] VARCHAR(255)
	,[KolCIF_BulanLalu] VARCHAR(255)
	,[Kol_Loan] VARCHAR(255)
	,[Kol_CIF] VARCHAR(255)
	,[Kol_SUPERCIF] VARCHAR(255)
	,[OSPOKOKCONVERSION PSAK] DECIMAL(20, 2)
	,[OSPOKOKCONVERSION] DECIMAL(20, 2)
);

WHILE @POINTER <= 25
BEGIN
	
	SET @TABLE_CUR = (
		SELECT TOP 1
			CONCAT('[', SCHEMA_NAME(SCHEMA_ID), '].[', name, ']') AS NAME
		FROM [sys].[objects]
		WHERE type_desc = 'USER_TABLE'
		AND name LIKE 'CRG.LOAN_DAILY.____-__-__%'
		AND TRY_CAST(LEFT(REPLACE(name, 'CRG.LOAN_DAILY.', ''), 10) AS DATE) = @TGL_DATA
		ORDER BY
			TRY_CAST(LEFT(REPLACE(name, 'CRG.LOAN_DAILY.', ''), 10) AS DATE) DESC
			,CASE
				WHEN name LIKE ('%(FINAL)') THEN 1
				WHEN name LIKE ('%(QC)') THEN -1
				ELSE 0
			END DESC
	);
	
	SET @SQL_QUERY = CONCAT(
		'SELECT
			[CUR].[FICMISDATE] [TGL_DATA]
			,[CUR].[NOLOAN] [NOLOAN]
			,[CUR].[NomorCIF] [NomorCIF]
			,[CUR].[NomorCIF_Super] [NomorCIF_Super]
			,[CUR].[NAMANASABAH] [NAMANASABAH]
			,[CUR].[KodeOutlet_BSI]
			,[CUR].[Nama_Outlet_BSI]
			,[CUR].[Area_BSI]
			,[CUR].[Regional_BSI]
			,[CUR].[Segmen_BSI]
			,[CUR].[Produk_BSI]
			,[CUR].[Produk_BSI_Detail]
			,[CUR].[KolCIF_BulanLalu]
			,[CUR].[KolLoan] [Kol_Loan]
			,[CUR].[KolCIF_NONSUPER] [Kol_CIF]
			,[CUR].[KolCIF] [Kol_SUPERCIF]
			,[CUR].[OSPOKOKCONVERSION PSAK]
			,[CUR].[OSPOKOKCONVERSION]
		FROM ', @TABLE_CUR, ' [CUR]
		WHERE [CUR].[NomorCIF] IN (''', @NOMORCIF, ''', ''', @SUPERCIF, ''')
		OR [CUR].[NomorCIF_Super] IN (''', @NOMORCIF, ''', ''', @SUPERCIF, ''');'
	);
	
	BEGIN TRY
		INSERT INTO #RESULT
		EXEC(@SQL_QUERY);
		PRINT CONCAT('EKSEKUSI DATA PER ', @TGL_DATA, ' BASED ON BEFORE ', @TABLE_CUR);
	END TRY
	BEGIN CATCH
		PRINT CONCAT('ERROR! ', ERROR_MESSAGE());
	END CATCH
	
	SET @POINTER = @POINTER + 1;
	SET @TGL_DATA = DATEADD(DAY, 1, @TGL_DATA);
END

SELECT * FROM #RESULT;
DROP TABLE #RESULT;