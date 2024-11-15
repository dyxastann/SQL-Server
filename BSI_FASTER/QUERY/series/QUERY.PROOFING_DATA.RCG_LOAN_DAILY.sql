DECLARE @NOMORCIF VARCHAR(20) = '', @SUPERCIF VARCHAR(20) = '' ,@NOLOAN VARCHAR(20) = '', @TGL_DATA DATE = '2023-07-31', @SQL_QUERY VARCHAR(MAX);

CREATE TABLE #RESULT (
	[SOURCE] VARCHAR(255)
	,[NOLOAN] VARCHAR(255)
	,[NOMORCIF] VARCHAR(255)
	,[SUPERCIF] VARCHAR(255)
	,[NAMANASABAH] VARCHAR(255)
	,[DIVISI] VARCHAR(255)
	,[PRODUK] VARCHAR(255)
	,[PRODUK_DETAIL] VARCHAR(255)
	,[TGLJTTEMPO] DATE
	,[DPD] INTEGER
	,[KOL_LOAN] VARCHAR(255)
	,[KOL_CIF] VARCHAR(255)
	,[KOL_SUPERCIF] VARCHAR(255)
	,[RBH_PBH] DECIMAL(20, 10)
	,[REALISASI_BAGIHASIL] DECIMAL(20, 2)
	,[PROYEKSI_BAGIHASIL] DECIMAL(20, 2)
);

SET @SQL_QUERY = CONCAT('
	SELECT
		''FOG'' [SOURCE]
		,[NOLOAN] [NOLOAN]
		,[NOMORCIF] [NOMORCIF]
		,[SUPERCIF_NO] [SUPERCIF]
		,[NAMALENGKAP] [NAMANASABAH]
		,[DIVISI_FINAL] [DIVISI]
		,NULL [PRODUK]
		,NULL [PRODUK_DETAIL]
		,NULL [TGLJTTEMPO] -- [TGLJTTEMPO] [TGLJTTEMPO]
		,NULL [DPD] -- [DAYPASTDUE] [DPD]
		,[KOL_LOAN_FINAL] [KOL_LOAN]
		,[KOL_CIF_FINAL] [KOL_CIF]
		,[KOL_SUPERCIF_FINAL] [KOL_SUPERCIF]
		,NULL [RBH_PBH]  -- TRY_CAST([REALISASI_BAGIHASIL] AS DECIMAL(20, 2)) / COALESCE(NULLIF(TRY_CAST([PROYEKSI_BAGIHASIL] AS DECIMAL(20, 2)), 0.00), NULLIF(TRY_CAST([REALISASI_BAGIHASIL] AS DECIMAL(20, 2)), 0.00), 1.00) [RBH_PBH]
		,NULL [REALISASI_BAGIHASIL] -- TRY_CAST([REALISASI_BAGIHASIL] AS DECIMAL(20, 2)) [REALISASI_BAGIHASIL]
		,NULL [PROYEKSI_BAGIHASIL] -- TRY_CAST([PROYEKSI_BAGIHASIL] AS DECIMAL(20, 2)) [PROYEKSI_BAGIHASIL]
	FROM [series].[FOG.LOAN_DAILY.', @TGL_DATA,']
	WHERE [NOMORCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [SUPERCIF_NO] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [NOLOAN] IN (''', @NOLOAN, ''');'
);

BEGIN TRY
	INSERT INTO #RESULT
	EXEC(@SQL_QUERY);
END TRY
BEGIN CATCH
	PRINT CONCAT('ERROR: ', ERROR_MESSAGE());
END CATCH

SET @SQL_QUERY = CONCAT('
	SELECT
		''DDM'' [SOURCE]
		,[noRekening] [NOLOAN]
		,[noCIF_Legacy] [NOMORCIF]
		,[noCIF] [SUPERCIF]
		,[namaNasabah] [NAMANASABAH]
		,[segmenBSI] [DIVISI]
		,[namaProdukBSI] [PRODUK]
		,[subProduct1] [PRODUK_DETAIL]
		,[tanggalTutup] [TGLJTTEMPO]
		,NULL [DPD] -- [DPD] [DPD]
		,[kol_rek] [KOL_LOAN]
		,NULL [KOL_CIF]
		,[kolektibilitas] [KOL_SUPERCIF]
		,[realisasiBagiHasil] / COALESCE(NULLIF([proyeksiBagiHasil], 0.00), NULLIF([realisasiBagiHasil], 0.00), 1.00) [RBH_PBH]
		,[realisasiBagiHasil]
		,[proyeksiBagiHasil]
	FROM [series].[DDM.LOAN_DAILY.', @TGL_DATA,']
	WHERE [noCIF_Legacy] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [noRekening] IN (''', @NOLOAN, ''');'
);

BEGIN TRY
	INSERT INTO #RESULT
	EXEC(@SQL_QUERY);
END TRY
BEGIN CATCH
	PRINT CONCAT('ERROR: ', ERROR_MESSAGE());
END CATCH

SET @SQL_QUERY = CONCAT('
	SELECT
		''RCG'' [SOURCE]
		,[NOLOAN]
		,[NOMORCIF]
		,[SUPERCIF]
		,[NAMANASABAH]
		,[DIVISI]
		,[PRODUK]
		,[PRODUK_DETAIL]
		,[TANGGAL_JATUH_TEMPO] [TGLJTTEMPO]
		,[DPD]
		,[KOL_LOAN]
		,[KOL_CIF]
		,[KOL_SUPERCIF]
		,[REALISASI_BAGIHASIL] / COALESCE(NULLIF([PROYEKSI_BAGIHASIL], 0.00), NULLIF([REALISASI_BAGIHASIL], 0.00), 1.00) [RBH_PBH]
		,[REALISASI_BAGIHASIL]
		,[PROYEKSI_BAGIHASIL]
	FROM [series].[RCG.LOAN_DAILY.', @TGL_DATA, CASE WHEN @TGL_DATA = EOMONTH(@TGL_DATA) THEN ' (FINAL)' END,']
	WHERE [NOMORCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [SUPERCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [NOLOAN] IN (''', @NOLOAN, ''');'
);

BEGIN TRY
	INSERT INTO #RESULT
	EXEC(@SQL_QUERY);
END TRY
BEGIN CATCH
	PRINT CONCAT('ERROR: ', ERROR_MESSAGE());
END CATCH

SET @SQL_QUERY = CONCAT('
	SELECT
		''CRG'' [SOURCE]
		,[NOLOAN]
		,[NOMORCIF]
		,[NOMORCIF_SUPER] [SUPERCIF]
		,[NamaNasabah]
		,[Segmen_BSI] [DIVISI]
		,[Produk_BSI] [PRODUK]
		,[Produk_BSI_Detail] [PRODUK_DETAIL]
		,NULL [TGLJTTEMPO]
		,NULL [DPD]
		,[KolLoan] [KOL_LOAN]
		,[KolCIF_NonSuper] [KOL_CIF]
		,[KolCIF] [KOL_SUPERCIF]
		,NULL [RBH_PBH]
		,NULL [REALISASI_BAGIHASIL]
		,NULL [PROYEKSI_BAGIHASIL]
	FROM [series].[CRG.LOAN_DAILY.', @TGL_DATA, ']
	WHERE [NomorCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [NomorCIF_SUPER] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [NOLOAN] IN (''', @NOLOAN, ''');'
);

BEGIN TRY
	INSERT INTO #RESULT
	EXEC(@SQL_QUERY);
END TRY
BEGIN CATCH
	PRINT CONCAT('ERROR: ', ERROR_MESSAGE());
END CATCH

SET @SQL_QUERY = CONCAT('
	SELECT
		''IFOIS'' [SOURCE]
		,[NOLOAN]
		,[NOMORCIF]
		,[SCIF] [SUPERCIF]
		,[NAMALENGKAP] [NAMANASABAH]
		,[DIVISI]
		,TRY_CAST(NULL AS INTEGER) [PRODUK]
		,TRY_CAST(NULL AS INTEGER) [PRODUK_DETAIL]
		,[TGLJTTEMPO] [TGLJTTEMPO]
		,TRY_CAST([DAYPASTDUE] AS INTEGER) [DPD]
		,[KOLBSM] [KOL_LOAN]
		,[KOLCIF] [KOL_CIF]
		,TRY_CAST(NULL AS INTEGER) [KOL_SUPERCIF]
		,NULL [RBH_PBH]
		,[REALISASI_BAGIHASIL]
		,[PROYEKSI_BAGIHASIL]
	FROM [series].[IFOIS.LOAN_DAILY.', @TGL_DATA, ']
	WHERE [NomorCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [SCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [NOLOAN] IN (''', @NOLOAN, ''');'
);

BEGIN TRY
	INSERT INTO #RESULT
	EXEC(@SQL_QUERY);
END TRY
BEGIN CATCH
	PRINT CONCAT('ERROR: ', ERROR_MESSAGE());
END CATCH

SET @SQL_QUERY = CONCAT('
	SELECT
		''JFAST'' [SOURCE]
		,[NOLOAN]
		,[NOMORCIF]
		,NULL [SUPERCIF] -- [SCIF] [SUPERCIF]
		,[NAMALENGKAP] [NAMANASABAH]
		,[DIVISI]
		,TRY_CAST(NULL AS INTEGER) [PRODUK]
		,TRY_CAST(NULL AS INTEGER) [PRODUK_DETAIL]
		,[TGLJTTEMPO] [TGLJTTEMPO]
		,TRY_CAST([DAYPASTDUE] AS INTEGER) [DPD]
		,[KOLBSM] [KOL_LOAN]
		,[KOLCIF] [KOL_CIF]
		,TRY_CAST(NULL AS INTEGER) [KOL_SUPERCIF]
		,NULL [RBH_PBH]
		,[REALISASI_BAGIHASIL]
		,[PROYEKSI_BAGIHASIL]
	FROM [series].[MIS.IFOS_JFAST.', @TGL_DATA, ']
	WHERE [NomorCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	-- OR [SCIF] IN (''', @NOMORCIF,''', ''', @SUPERCIF,''')
	OR [NOLOAN] IN (''', @NOLOAN, ''');'
);

BEGIN TRY
	INSERT INTO #RESULT
	EXEC(@SQL_QUERY);
END TRY
BEGIN CATCH
	PRINT CONCAT('ERROR: ', ERROR_MESSAGE());
END CATCH

SELECT * FROM #RESULT;

DROP TABLE #RESULT;