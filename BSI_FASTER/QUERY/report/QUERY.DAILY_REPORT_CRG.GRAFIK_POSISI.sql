DECLARE @SQL_QUERY varchar(max), @TARGET varchar(max), @tgl_data DATE = '2023-07-01', @pointer INT = 1
DECLARE @RESULT TABLE (
	[TGL] INT
	,[OS_KOL_2] DECIMAL(20, 10)
	,[OS_KOL_2A] DECIMAL(20, 10)
	,[OS_KOL_NPF] DECIMAL(20, 10)
	,[OS_KOL_3A] DECIMAL(20, 10)
)

WHILE @POINTER <= 31
BEGIN
	SET @TARGET = (
		SELECT TOP 1
			CONCAT('[', SCHEMA_NAME(SCHEMA_ID), '].[', name, ']') AS NAME
		FROM [sys].[objects]
		WHERE type_desc = 'USER_TABLE'
		AND name LIKE 'CRG.LOAN_DAILY.____-__-__%'
		AND TRY_CAST(LEFT(REPLACE(name, 'CRG.LOAN_DAILY.', ''), 10) AS DATE) <= @TGL_DATA
		ORDER BY
			TRY_CAST(LEFT(REPLACE(name, 'CRG.LOAN_DAILY.', ''), 10) AS DATE) DESC
			,CASE
				WHEN name LIKE ('%(FINAL)') THEN 1
				WHEN name LIKE ('%(FOG)') THEN 0.5
				WHEN name LIKE ('%(QC)') THEN -1
				ELSE 0
			END DESC
	);
	
	SET @SQL_QUERY = CONCAT(
		'SELECT
			''', RIGHT(@tgl_Data, 2),''' [TGL]
			,SUM(CASE WHEN LEFT([KOLCIF], 1) IN (''2'') AND [SEGMEN_BSI] IN (''Consumer'', ''Hasanah Card'', ''Pawning'') THEN [OSPOKOKCONVERSION PSAK] ELSE 0 END) / 1000000000.00 AS [OS_KOL_2]
			,SUM(CASE WHEN [KOLCIF] IN (''2A'') AND [SEGMEN_BSI] IN (''Consumer'', ''Hasanah Card'', ''Pawning'') THEN [OSPOKOKCONVERSION PSAK] ELSE 0 END) / 1000000000.00 AS [OS_KOL_2A]
			,SUM(CASE WHEN LEFT([KOLCIF], 1) IN (''3'', ''4'', ''5'') THEN [OSPOKOKCONVERSION PSAK] ELSE 0 END) / 1000000000.00 AS [OS_NPF]
			,SUM(CASE WHEN [KOLCIF] IN (''3A'') THEN [OSPOKOKCONVERSION PSAK] ELSE 0 END) / 1000000000.00 AS [OS_KOL_3A]
		FROM ', @TARGET, '
		WHERE [SEGMEN_BSI] IN (''Consumer'', ''Hasanah Card'', ''Pawning'', ''SME'', ''Mikro'')
-- 		AND [SEGMEN_BSI] IN (''Mikro'')
-- 		AND [PRODUK_BSI] LIKE (''%Pensiun%'')
-- 		AND [PRODUK_BSI_DETAIL] LIKE (''%FLPP%'');'
	);
	
	INSERT INTO @RESULT EXEC(@SQL_QUERY);
	
	SET @tgl_data = DATEADD(DAY, 1, @tgl_data);
	SET @pointer = @pointer + 1;
END

SELECT * FROM @RESULT;