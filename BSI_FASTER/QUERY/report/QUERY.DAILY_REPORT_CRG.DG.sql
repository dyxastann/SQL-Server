DECLARE @SQL_QUERY varchar(max), @TARGET varchar(max), @TARGET_BEFORE varchar(max), @tgl_data DATE = '2023-07-31', @pointer INT = 1
DECLARE @RESULT TABLE (
	[TGL] INT
	,[ACCT_CURR_TO_X] INT
	,[OS_CURR_TO_X] DECIMAL(20, 10)
	,[ACCT_X_TO_30] INT
	,[OS_X_TO_30] DECIMAL(20, 10)
	,[ACCT_30_TO_60] INT
	,[OS_30_TO_60] DECIMAL(20, 10)
	,[ACCT_60_TO_90] INT
	,[OS_60_TO_90] DECIMAL(20, 10)
	,[ACCT_90_TO_120] INT
	,[OS_90_TO_120] DECIMAL(20, 10)
	,[ACCT_120_TO_150] INT
	,[OS_120_TO_150] DECIMAL(20, 10)
	,[ACCT_150_TO_180] INT
	,[OS_150_TO_180] DECIMAL(20, 10)
	,[ACCT_180_TO_210] INT
	,[OS_180_TO_210] DECIMAL(20, 10)
	,[ACCT_210_TO_240] INT
	,[OS_210_TO_240] DECIMAL(20, 10)
	,[ACCT_240_TO_270] INT
	,[OS_240_TO_270] DECIMAL(20, 10)
	,[ACCT_270+] INT
	,[OS_270+] DECIMAL(20, 10)
	,[GAP] INT
	,[ACCT_KOL_1_TO_2] INT
	,[OS_KOL_1_TO_2] DECIMAL(20, 10)
	,[ACCT_PF_TO_NPF] INT
	,[OS_PF_TO_NPF] DECIMAL(20, 10)
)

WHILE @POINTER <= 1
BEGIN
	SET @TARGET_BEFORE = (
		SELECT TOP 1
			CONCAT('[', SCHEMA_NAME(SCHEMA_ID), '].[', name, ']') AS NAME
		FROM [sys].[objects]
		WHERE type_desc = 'USER_TABLE'
		AND name LIKE 'CRG.LOAN_DAILY.____-__-__%'
		AND TRY_CAST(LEFT(REPLACE(name, 'CRG.LOAN_DAILY.', ''), 10) AS DATE) < @TGL_DATA
		ORDER BY
			TRY_CAST(LEFT(REPLACE(name, 'CRG.LOAN_DAILY.', ''), 10) AS DATE) DESC
			,CASE
				WHEN name LIKE ('%(FINAL)') THEN 1
				WHEN name LIKE ('%(FOG)') THEN 0.5
				WHEN name LIKE ('%(QC)') THEN -1
				ELSE 0
			END DESC
	);
	
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
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''1'') AND [CUR].[KOLCIF] IN (''2A'') THEN 1 ELSE 0 END) [ACCT_CURR_TO_X]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''1'') AND [CUR].[KOLCIF] IN (''2A'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_CURR_TO_X]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''2A'') AND [CUR].[KOLCIF] IN (''2B'') THEN 1 ELSE 0 END) [ACCT_X_TO_30]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''2A'') AND [CUR].[KOLCIF] IN (''2B'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_X_TO_30]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''2B'') AND [CUR].[KOLCIF] IN (''2C'') THEN 1 ELSE 0 END) [ACCT_30_TO_60]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''2B'') AND [CUR].[KOLCIF] IN (''2C'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_30_TO_60]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''2C'') AND [CUR].[KOLCIF] IN (''3A'') THEN 1 ELSE 0 END) [ACCT_60_TO_90]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''2C'') AND [CUR].[KOLCIF] IN (''3A'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_60_TO_90]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''3A'') AND [CUR].[KOLCIF] IN (''3B'') THEN 1 ELSE 0 END) [ACCT_90_TO_120]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''3A'') AND [CUR].[KOLCIF] IN (''3B'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_90_TO_120]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''3B'') AND [CUR].[KOLCIF] IN (''3C'') THEN 1 ELSE 0 END) [ACCT_120_TO_150]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''3B'') AND [CUR].[KOLCIF] IN (''3C'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_120_TO_150]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''3C'') AND [CUR].[KOLCIF] IN (''4A'') THEN 1 ELSE 0 END) [ACCT_150_TO_180]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''3C'') AND [CUR].[KOLCIF] IN (''4A'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_150_TO_180]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''4A'') AND [CUR].[KOLCIF] IN (''4B'') THEN 1 ELSE 0 END) [ACCT_180_TO_210]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''4A'') AND [CUR].[KOLCIF] IN (''4B'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_180_TO_210]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''4B'') AND [CUR].[KOLCIF] IN (''4C'') THEN 1 ELSE 0 END) [ACCT_210_TO_240]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''4B'') AND [CUR].[KOLCIF] IN (''4C'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_210_TO_240]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''4C'') AND [CUR].[KOLCIF] IN (''5'') THEN 1 ELSE 0 END) [ACCT_240_TO_270]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''4C'') AND [CUR].[KOLCIF] IN (''5'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_240_TO_270]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''5'') AND [CUR].[KOLCIF] IN (''5'') THEN 1 ELSE 0 END) [ACCT_270+]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''5'') AND [CUR].[KOLCIF] IN (''5'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_270+]
			,NULL
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''1'') AND LEFT([CUR].[KOLCIF], 1) IN (''2'') THEN 1 ELSE 0 END) [ACCT_KOL_1_TO_2]
			,SUM(CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1'') IN (''1'') AND LEFT([CUR].[KOLCIF], 1) IN (''2'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_KOL_1_TO_2]
			,SUM(CASE WHEN LEFT(COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1''), 1) IN (''1'', ''2'') AND LEFT([CUR].[KOLCIF], 1) IN (''3'', ''4'', ''5'') THEN 1 ELSE 0 END) [ACCT_PF_TO_NPF]
			,SUM(CASE WHEN LEFT(COALESCE([BEF].[KOLCIF], [D_1].[KOLCIF], ''1''), 1) IN (''1'', ''2'') AND LEFT([CUR].[KOLCIF], 1) IN (''3'', ''4'', ''5'') THEN [CUR].[OSPOKOKCONVERSION PSAK] ELSE 0.00 END) / 1000000000.00 [OS_PF_TO_NPF]
		FROM ', @TARGET, ' [CUR]
		FULL OUTER JOIN ', @TARGET_BEFORE, ' [BEF]
			ON [CUR].[NOLOAN] = [BEF].[NOLOAN]
		OUTER APPLY (
			SELECT
				COALESCE(MAX([BY_LOAN]), MAX([BY_CIF]) , MAX([BY_SUPERCIF])) [KOLCIF]
			FROM (
				SELECT
					CASE WHEN [NOLOAN] IN (
						SELECT
							[NOLOAN_LAMA]
						FROM [mapping].[PORTOFOLIO_ONBS.COMPILE.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN]
						WHERE [NOLOAN_BARU] = [CUR].[NOLOAN]
						AND COALESCE([KETERANGAN], ''X'') NOT IN (''Invalid'')
					) OR [NOLOAN] = COALESCE([CUR].[NOLOAN], ''X'') THEN [KOLCIF]
					WHEN [CUR].[SEGMEN_BSI] IN (''PAWNING'') THEN ''1''END [BY_LOAN]
					,CASE WHEN [NOMORCIF] = [CUR].[NOMORCIF] THEN [KOLCIF] END [BY_CIF]
					,[KOLCIF] [BY_SUPERCIF]
				FROM ', @TARGET_BEFORE, '
				WHERE [CUR].[NOMORCIF_SUPER] = [NOMORCIF_SUPER]
					AND
					(
						(
							[CUR].[Segmen_BSI] IN (''Hasanah Card'')
							AND [Segmen_BSI] IN (''Hasanah Card'')
						)
						OR
						(
							[CUR].[Segmen_BSI] NOT IN (''Hasanah Card'')
							AND [Segmen_BSI] NOT IN (''Hasanah Card'')
						)
					)
			) [SUB]
		) [D_1]
		WHERE COALESCE([CUR].[Segmen_BSI], [BEF].[Segmen_BSI]) IN (''Consumer'', ''Hasanah Card'', ''Pawning'', ''SME'', ''Mikro'')
-- 		AND COALESCE([CUR].[Segmen_BSI], [BEF].[Segmen_BSI]) IN (''Mikro'')
-- 		AND COALESCE([CUR].[PRODUK_BSI], [BEF].[PRODUK_BSI]) LIKE (''%Pensiun%'')
-- 		AND COALESCE([CUR].[PRODUK_BSI_DETAIL], [BEF].[PRODUK_BSI_DETAIL]) LIKE (''%FLPP%'')
		AND LEFT([CUR].[KOLCIF], 1) IN (''2'', ''3'', ''4'', ''5'');'
	);
	
	INSERT INTO @RESULT EXEC(@SQL_QUERY);
	
	SET @tgl_data = DATEADD(DAY, 1, @tgl_data);
	SET @pointer = @pointer + 1;
END

SELECT * FROM @RESULT;