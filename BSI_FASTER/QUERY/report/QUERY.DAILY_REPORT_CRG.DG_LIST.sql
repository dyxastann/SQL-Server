DECLARE @SQL_QUERY varchar(max), @TARGET varchar(max), @TARGET_BEFORE varchar(max), @tgl_data DATE = '2023-07-31', @pointer INT = 1

BEGIN TRY
	CREATE TABLE [compile].[LIST_DG.DAILY.COMPILE (CRG)] (
		[TGL_BEFORE] DATE
		,[TGL_DATA] DATE
		,[TGL_REPORT] DATE
		,[NOLOAN] VARCHAR(255)
		,[NOMORCIF] VARCHAR(255)
		,[SUPERCIF] VARCHAR(255)
		,[NAMANASABAH] VARCHAR(255)
		,[KODECABANG] VARCHAR(255)
		,[NAMACABANG] VARCHAR(255)
		,[AREA] VARCHAR(255)
		,[REGION] VARCHAR(255)
		,[DIVISI] VARCHAR(255)
		,[PRODUK] VARCHAR(255)
		,[PRODUK_DETAIL] VARCHAR(255)
		,[KOL_SUPERCIF_LM] VARCHAR(255)
		,[KOL_LOAN_BEFORE] VARCHAR(255)
		,[KOL_CIF_BEFORE] VARCHAR(255)
		,[KOL_SUPERCIF_BEFORE] VARCHAR(255)
		,[KOL_LOAN_CURRENT] VARCHAR(255)
		,[KOL_CIF_CURRENT] VARCHAR(255)
		,[KOL_SUPERCIF_CURRENT] VARCHAR(255)
		,[OS_POKOK_PSAK_BEFORE] DECIMAL(20, 2)
		,[OS_POKOK_BEFORE] DECIMAL(20, 2)
		,[OS_POKOK_PSAK_CURRENT] DECIMAL(20, 2)
		,[OS_POKOK_CURRENT] DECIMAL(20, 2)
		,[FLAG_DATA] VARCHAR(255)
		,[PENYEBAB] VARCHAR(255)
	);
END TRY
BEGIN CATCH
END CATCH

WHILE @POINTER <= 1
BEGIN
	DELETE FROM [compile].[LIST_DG.DAILY.COMPILE (CRG)] WHERE [TGL_REPORT] = @tgl_data;
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
				WHEN name LIKE ('%(QC)') THEN -1
				ELSE 0
			END DESC
	);
	
	SET @SQL_QUERY = CONCAT(
		'SELECT
			[BEF].[FicMisDate] [TGL_BEFORE]
			,[CUR].[FicMisDate] [TGL_DATA]
			,''', @tgl_Data, ''' [TGL_REPORT]
			,[CUR].[NOLOAN]
			,[CUR].[NOMORCIF]
			,[CUR].[NomorCIF_Super] [SUPERCIF]
			,[CUR].[NAMANASABAH] [NAMANASABAH]
			,[CUR].[KodeOutlet_BSI] [KODECABANG]
			,[CUR].[Nama_Outlet_BSI] [NAMACABANG]
			,[CUR].[Area_BSI] [AREA]
			,[CUR].[Regional_BSI] [REGION]
			,[CUR].[Segmen_BSI] [DIVISI]
			,[CUR].[Produk_BSI] [PRODUK]
			,[CUR].[Produk_BSI_Detail] [PRODUK_DETAIL]
			,COALESCE([CUR].[KolCIF_BulanLalu], [BEF].[KolCIF_BulanLalu]) [KOL_SUPERCIF_LM]
			,[BEF].[KOLLOAN] [KOL_LOAN_BEFORE]
			,[BEF].[KOLCIF_NonSuper] [KOL_CIF_BEFORE]
			,COALESCE([BEF].[KOLCIF], [D_1].[KOL_SUPERCIF]) [KOL_SUPERCIF_BEFORE]
			,[CUR].[KOLLOAN] [KOL_LOAN_CURRENT]
			,[CUR].[KOLCIF_NonSuper] [KOL_CIF_CURRENT]
			,[CUR].[KOLCIF] [KOL_SUPERCIF_CURRENT]
			,[BEF].[OSPOKOKCONVERSION PSAK] [OS_POKOK_PSAK_BEFORE]
			,[BEF].[OSPOKOKCONVERSION] [OS_POKOK_BEFORE]
			,[CUR].[OSPOKOKCONVERSION PSAK] [OS_POKOK_PSAK_CURRENT]
			,[CUR].[OSPOKOKCONVERSION] [OS_POKOK_CURRENT]
			,CASE
				WHEN (
					LEFT([CUR].[KOLCIF], 1) IN (''2'')
					AND [CUR].[KOLCIF] > COALESCE([BEF].[KOLCIF], [D_1].[KOL_SUPERCIF], ''1'')
				) THEN CONCAT(''Downgrade Kol 2'', CASE WHEN COALESCE([BEF].[KOLCIF], [D_1].[KOL_SUPERCIF], ''1'') IN (''2A'', ''2B'') THEN '' Down Bucket'' END,'' by SuperCIF'')
				WHEN (
					LEFT([CUR].[KOLCIF], 1) IN (''3'', ''4'', ''5'')
					AND LEFT(COALESCE([BEF].[KOLCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''1'', ''2'')
				) THEN ''Downgrade NPF by SuperCIF''
				WHEN (
					LEFT([CUR].[KOLCIF_NonSuper], 1) IN (''2'')
					AND [CUR].[KOLCIF_NonSuper] > COALESCE([BEF].[KOLCIF_NonSuper], ''1'')
				) THEN CONCAT(''Downgrade Kol 2'', CASE WHEN COALESCE([BEF].[KOLCIF_NonSuper], ''1'') IN (''2A'', ''2B'') THEN '' Down Bucket'' END,'' by CIF'')
				WHEN (
					LEFT([CUR].[KOLCIF_NonSuper], 1) IN (''3'', ''4'', ''5'')
					AND LEFT(COALESCE([BEF].[KOLCIF_NonSuper], ''1''), 1) IN (''1'', ''2'')
				) THEN ''Downgrade NPF by CIF''
				WHEN (
					LEFT([CUR].[KOLLOAN], 1) IN (''2'')
					AND [CUR].[KOLLOAN] > COALESCE([BEF].[KOLLOAN], ''1'')
				) THEN CONCAT(''Downgrade Kol 2'', CASE WHEN COALESCE([BEF].[KOLLOAN], ''1'') IN (''2A'', ''2B'') THEN '' Down Bucket'' END,'' by Loan'')
				WHEN (
					LEFT([CUR].[KOLLOAN], 1) IN (''3'', ''4'', ''5'')
					AND LEFT(COALESCE([BEF].[KOLLOAN], ''1''), 1) IN (''1'', ''2'')
				) THEN ''Downgrade NPF by Loan''
			END [FLAG_DATA]
			,NULL AS [PENYEBAB]
		FROM ', @TARGET, ' [CUR]
		FULL OUTER JOIN ', @TARGET_BEFORE, ' [BEF]
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
					) OR [NOLOAN] = COALESCE([CUR].[NOLOAN], ''X'') THEN [KOLCIF]
					WHEN [CUR].[Segmen_BSI] IN (''Pawning'') THEN ''1'' END [BY_LOAN]
					,CASE WHEN [NOMORCIF] = [CUR].[NOMORCIF] THEN [KOLCIF] END [BY_CIF]
					,[KOLCIF] [BY_SUPERCIF]
				FROM ', @TARGET_BEFORE, '
				WHERE [CUR].[NomorCIF_Super] = [NomorCIF_Super]
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
		WHERE COALESCE([CUR].[Segmen_BSI], [BEF].[Segmen_BSI]) IN (''Konsumer'', ''Hasanah Card'', ''Pawning'', ''SME'', ''Mikro'')
		AND
			(
				(
					LEFT([CUR].[KOLCIF], 1) IN (''2'')
					AND [CUR].[KOLCIF] > COALESCE([BEF].[KOLCIF], [D_1].[KOL_SUPERCIF], ''1'')
				)
				OR
				(
					LEFT([CUR].[KOLCIF], 1) IN (''3'', ''4'', ''5'')
					AND LEFT(COALESCE([BEF].[KOLCIF], [D_1].[KOL_SUPERCIF], ''1''), 1) IN (''1'', ''2'')
				)
				OR
				(
					LEFT([CUR].[KOLCIF_NonSuper], 1) IN (''2'')
					AND [CUR].[KOLCIF_NonSuper] > COALESCE([BEF].[KOLCIF_NonSuper], ''1'')
				)
				OR
				(
					LEFT([CUR].[KOLCIF_NonSuper], 1) IN (''3'', ''4'', ''5'')
					AND LEFT(COALESCE([BEF].[KOLCIF_NonSuper], ''1''), 1) IN (''1'', ''2'')
				)
				OR
				(
					LEFT([CUR].[KOLLOAN], 1) IN (''2'')
					AND [CUR].[KOLLOAN] > COALESCE([BEF].[KOLLOAN], ''1'')
				)
				OR
				(
					LEFT([CUR].[KOLLOAN], 1) IN (''3'', ''4'', ''5'')
					AND LEFT(COALESCE([BEF].[KOLLOAN], ''1''), 1) IN (''1'', ''2'')
				)
			);'
	);
	
	INSERT INTO [compile].[LIST_DG.DAILY.COMPILE (CRG)] EXEC(@SQL_QUERY);
	
	SET @tgl_data = DATEADD(DAY, 1, @tgl_data);
	SET @pointer = @pointer + 1;
END