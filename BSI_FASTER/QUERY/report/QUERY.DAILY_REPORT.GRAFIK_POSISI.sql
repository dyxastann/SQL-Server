DECLARE @SQL_QUERY varchar(max), @TARGET varchar(max), @tgl_data DATE = '2023-03-01', @pointer INT = 1
DECLARE @RESULT TABLE (
	[TGL] INT
	,[OS_KOL_2] DECIMAL(20, 2)
	,[OS_KOL_2A] DECIMAL(20, 2)
	,[OS_KOL_NPF] DECIMAL(20, 2)
	,[OS_KOL_3A] DECIMAL(20, 2)
)

WHILE @POINTER <= 31
BEGIN
	SET @TARGET = (
		SELECT TOP 1
			CONCAT('[', SCHEMA_NAME(SCHEMA_ID), '].[', name, ']') AS NAME
		FROM [sys].[objects]
		WHERE type_desc = 'USER_TABLE'
		AND name LIKE 'RCG.LOAN_DAILY.____-__-__%'
		AND TRY_CAST(LEFT(REPLACE(name, 'RCG.LOAN_DAILY.', ''), 10) AS DATE) <= @TGL_DATA
		ORDER BY
			TRY_CAST(LEFT(REPLACE(name, 'RCG.LOAN_DAILY.', ''), 10) AS DATE) DESC
			,CASE
				WHEN name LIKE ('%(FINAL)') THEN 1
				WHEN name LIKE ('%(QC)') THEN -1
				ELSE 0
			END DESC
	);
	
	SET @SQL_QUERY = CONCAT(
		'SELECT
			''', RIGHT(@tgl_Data, 2),''' [TGL]
			,SUM(CASE WHEN LEFT([KOL_SUPERCIF], 1) IN (''2'') AND [DIVISI] IN (''Konsumer'', ''Hasanah Card'', ''Pawning'') THEN [OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 AS [OS_KOL_2]
			,SUM(CASE WHEN [KOL_SUPERCIF] IN (''2A'') AND [DIVISI] IN (''Konsumer'', ''Hasanah Card'', ''Pawning'') THEN [OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 AS [OS_KOL_2A]
			,SUM(CASE WHEN LEFT([KOL_SUPERCIF], 1) IN (''3'', ''4'', ''5'') THEN [OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 AS [OS_NPF]
			,SUM(CASE WHEN [KOL_SUPERCIF] IN (''3A'') THEN [OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 AS [OS_KOL_3A]
		FROM ', @TARGET, '
		WHERE [DIVISI] IN (''Konsumer'', ''Hasanah Card'', ''Pawning'', ''SME'', ''Mikro'')
-- 		AND [DIVISI] IN (''Mikro'')
-- 		AND [PRODUK] LIKE (''%Pensiun%'')
-- 		AND [PRODUK_DETAIL] LIKE (''%FLPP%'');'
	);
	
	INSERT INTO @RESULT EXEC(@SQL_QUERY);
	
	SET @tgl_data = DATEADD(DAY, 1, @tgl_data);
	SET @pointer = @pointer + 1;
END

SELECT * FROM @RESULT;