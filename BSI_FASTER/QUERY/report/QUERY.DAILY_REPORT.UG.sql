DECLARE @SQL_QUERY varchar(max), @TARGET varchar(max), @TARGET_BEFORE varchar(max), @tgl_data DATE = '2023-06-01', @pointer INT = 1
DECLARE @RESULT TABLE (
	[TGL] INT
	,[ACCT_KOL_2_TO_1] INT
	,[OS_KOL_2_TO_1] DECIMAL(20, 2)
	,[ACCT_KOL_2A] INT
	,[OS_KOL_2A] DECIMAL(20, 2)
	,[ACCT_KOL_2B] INT
	,[OS_KOL_2B] DECIMAL(20, 2)
	,[ACCT_KOL_2C] INT
	,[OS_KOL_2C] DECIMAL(20, 2)
	,[ACCT_NPF_TO_PF] INT
	,[OS_NPF_TO_PF] DECIMAL(20, 2)
	,[NULL] DECIMAL(20, 2)
	,[ACCT_PAYMENT_KOL_2] INT
	,[OS_PAYMENT_KOL_2] DECIMAL(20, 2)
	,[ACCT_PAYMENT_NPF] INT
	,[OS_PAYMENT_NPF] DECIMAL(20, 2)
)

WHILE @POINTER <= 19
BEGIN
	SET @TARGET_BEFORE = (
		SELECT TOP 1
			CONCAT('[', SCHEMA_NAME(SCHEMA_ID), '].[', name, ']') AS NAME
		FROM [sys].[objects]
		WHERE type_desc = 'USER_TABLE'
		AND name LIKE 'RCG.LOAN_DAILY.____-__-__%'
		AND TRY_CAST(LEFT(REPLACE(name, 'RCG.LOAN_DAILY.', ''), 10) AS DATE) < @TGL_DATA
		ORDER BY
			TRY_CAST(LEFT(REPLACE(name, 'RCG.LOAN_DAILY.', ''), 10) AS DATE) DESC
			,CASE
				WHEN name LIKE ('%(FINAL)') THEN 1
				WHEN name LIKE ('%(QC)') THEN -1
				ELSE 0
			END DESC
	);
	
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
			,SUM(CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''2'') AND LEFT([CUR].[KOL_SUPERCIF], 1) IN (''1'') THEN 1 ELSE 0 END) [ACCT_KOL_2_TO_1]
			,SUM(CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''2'') AND LEFT([CUR].[KOL_SUPERCIF], 1) IN (''1'') THEN [BEF].[OS_POKOK_PSAK] ELSE 0.00 END) / 1000000000.00 [OS_KOL_2_TO_1]
			,SUM(CASE WHEN COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1'') IN (''2A'') AND COALESCE([CUR].[KOL_SUPERCIF], [BEF].[KOL_SUPERCIF]) < [BEF].[KOL_SUPERCIF] THEN 1 ELSE 0 END) [ACCT_KOL_2A]
			,SUM(CASE WHEN COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1'') IN (''2A'') AND COALESCE([CUR].[KOL_SUPERCIF], [BEF].[KOL_SUPERCIF]) < [BEF].[KOL_SUPERCIF] THEN [BEF].[OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 [OS_KOL_2A]
			,SUM(CASE WHEN COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1'') IN (''2B'') AND COALESCE([CUR].[KOL_SUPERCIF], [BEF].[KOL_SUPERCIF]) < [BEF].[KOL_SUPERCIF] THEN 1 ELSE 0 END) [ACCT_KOL_2B]
			,SUM(CASE WHEN COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1'') IN (''2B'') AND COALESCE([CUR].[KOL_SUPERCIF], [BEF].[KOL_SUPERCIF]) < [BEF].[KOL_SUPERCIF] THEN [BEF].[OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 [OS_KOL_2B]
			,SUM(CASE WHEN COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1'') IN (''2C'') AND COALESCE([CUR].[KOL_SUPERCIF], [BEF].[KOL_SUPERCIF]) < [BEF].[KOL_SUPERCIF] THEN 1 ELSE 0 END) [ACCT_KOL_2C]
			,SUM(CASE WHEN COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1'') IN (''2C'') AND COALESCE([CUR].[KOL_SUPERCIF], [BEF].[KOL_SUPERCIF]) < [BEF].[KOL_SUPERCIF] THEN [BEF].[OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 [OS_KOL_2C]
			,SUM(CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''3'', ''4'', ''5'') AND LEFT([CUR].[KOL_SUPERCIF], 1) IN (''1'', ''2'') THEN 1 ELSE 0 END) [ACCT_NPF_TO_PF]
			,SUM(CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''3'', ''4'', ''5'') AND LEFT([CUR].[KOL_SUPERCIF], 1) IN (''1'', ''2'') THEN [BEF].[OS_POKOK_PSAK] ELSE 0 END) / 1000000000.00 [OS_NPF_TO_PF]
			,NULL [NULL]
			,SUM(CASE WHEN [dbo].[fx_common_zerofy](CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''2'') THEN [BEF].[OS_POKOK_PSAK] ELSE 0.00 END - COALESCE([CUR].[OS_POKOK_PSAK], 0.00)) > 0.00 THEN 1 ELSE 0 END) [ACCT_PAYMENT_KOL_2]
			,SUM([dbo].[fx_common_zerofy](CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''2'') THEN [BEF].[OS_POKOK_PSAK] ELSE 0.00 END - COALESCE([CUR].[OS_POKOK_PSAK], 0.00))) / 1000000000.00 [OS_PAYMENT_KOL_2]
			,SUM(CASE WHEN [dbo].[fx_common_zerofy](CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''3'', ''4'', ''5'') THEN [BEF].[OS_POKOK_PSAK] ELSE 0.00 END - COALESCE([CUR].[OS_POKOK_PSAK], 0.00)) > 0.00 THEN 1 ELSE 0 END) [ACCT_PAYMENT_NPF]
			,SUM([dbo].[fx_common_zerofy](CASE WHEN LEFT(COALESCE([BEF].[KOL_SUPERCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''3'', ''4'', ''5'') THEN [BEF].[OS_POKOK_PSAK] ELSE 0.00 END - COALESCE([CUR].[OS_POKOK_PSAK], 0.00))) / 1000000000.00 [OS_PAYMENT_NPF]
		FROM ', @TARGET_BEFORE, ' [BEF]
		FULL OUTER JOIN ', @TARGET, ' [CUR]
			ON [CUR].[NOLOAN] = [BEF].[NOLOAN]
		OUTER APPLY (
			SELECT
				COALESCE(MAX([BY_LOAN]), MAX([BY_CIF]) , MAX([BY_SUPERCIF])) [KOL_SUPERCIF]
			FROM (
				SELECT
					CASE WHEN [NOLOAN] IN (
						SELECT
							[NOLOAN_LAMA]
						FROM [mapping].[PORTOFOLIO_ONBS.COMPILE.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN]
						WHERE [NOLOAN_BARU] = [CUR].[NOLOAN]
						AND COALESCE([KETERANGAN], ''X'') NOT IN (''Invalid'')
					) OR [NOLOAN] = COALESCE([CUR].[NOLOAN], ''X'') THEN [KOL_SUPERCIF]
					WHEN [CUR].[DIVISI] IN (''Pawning'') THEN ''1'' END [BY_LOAN]
					,CASE WHEN [NOMORCIF] = [CUR].[NOMORCIF] THEN [KOL_SUPERCIF] END [BY_CIF]
					,[KOL_SUPERCIF] [BY_SUPERCIF]
				FROM ', @TARGET_BEFORE, '
				WHERE [CUR].[SUPERCIF] = [SUPERCIF]
				AND
				(
					(
						[CUR].[DIVISI] IN (''Hasanah Card'')
						AND [DIVISI] IN (''Hasanah Card'')
					)
					OR
					(
						[CUR].[DIVISI] NOT IN (''Hasanah Card'')
						AND [DIVISI] NOT IN (''Hasanah Card'')
					)
				)
			) [SUB]
		) [D_1]
		WHERE  COALESCE([CUR].[DIVISI], [BEF].[DIVISI]) IN (''Konsumer'', ''Hasanah Card'', ''Pawning'', ''SME'', ''Mikro'')
-- 		AND COALESCE([CUR].[DIVISI], [BEF].[DIVISI]) IN (''Mikro'')
-- 		AND COALESCE([CUR].[PRODUK], [BEF].[PRODUK]) LIKE (''%Pensiun%'')
-- 		AND COALESCE([CUR].[PRODUK_DETAIL], [BEF].[PRODUK_DETAIL]) LIKE (''%FLPP%'')
		AND LEFT([BEF].[KOL_SUPERCIF], 1) IN (''2'', ''3'', ''4'', ''5'');'
	);
	
	INSERT INTO @RESULT EXEC(@SQL_QUERY);
	
	SET @tgl_data = DATEADD(DAY, 1, @tgl_data);
	SET @pointer = @pointer + 1;
END

SELECT * FROM @RESULT;