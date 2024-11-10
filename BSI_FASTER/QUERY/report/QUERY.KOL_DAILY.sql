BEGIN TRY
	CREATE TABLE [report].[KOL_DAILY] (
		[TGL_DATA] date  NULL,
		[NOLOAN] varchar(255),
		[NOMORCIF] varchar(255),
		[SUPERCIF] varchar(255),
		[NAMANASABAH] varchar(255),
		[KODECABANG] varchar(255),
		[NAMACABANG] varchar(255),
		[AREA] varchar(255),
		[REGION] varchar(255),
		[DIVISI] varchar(255),
		[PRODUK] varchar(255),
		[PRODUK_DETAIL] varchar(255),
		[JENISPIUTANGPEMBIAYAAN] varchar(255),
		[CYCLE] varchar(255),
		[KOL_LOAN_LM] varchar(255),
		[KOL_CIF_LM] varchar(255),
		[KOL_SUPERCIF_LM] varchar(255),
		[KOL_LOAN] varchar(255),
		[KOL_CIF] varchar(255),
		[KOL_SUPERCIF] varchar(255),
		[KOL_01] varchar(255),
		[KOL_02] varchar(255),
		[KOL_03] varchar(255),
		[KOL_04] varchar(255),
		[KOL_05] varchar(255),
		[KOL_06] varchar(255),
		[KOL_07] varchar(255),
		[KOL_08] varchar(255),
		[KOL_09] varchar(255),
		[KOL_10] varchar(255),
		[KOL_11] varchar(255),
		[KOL_12] varchar(255),
		[KOL_13] varchar(255),
		[KOL_14] varchar(255),
		[KOL_15] varchar(255),
		[KOL_16] varchar(255),
		[KOL_17] varchar(255),
		[KOL_18] varchar(255),
		[KOL_19] varchar(255),
		[KOL_20] varchar(255),
		[KOL_21] varchar(255),
		[KOL_22] varchar(255),
		[KOL_23] varchar(255),
		[KOL_24] varchar(255),
		[KOL_25] varchar(255),
		[KOL_26] varchar(255),
		[KOL_27] varchar(255),
		[KOL_28] varchar(255),
		[KOL_29] varchar(255),
		[KOL_30] varchar(255),
		[KOL_31] varchar(255),
		[KOL_TERBURUK_01-05] varchar(255),
		[KOL_TERBURUK_06-10] varchar(255),
		[KOL_TERBURUK_11-15] varchar(255),
		[KOL_TERBURUK_16-20] varchar(255),
		[KOL_TERBURUK_21-25] varchar(255),
		[KOL_TERBURUK_26-31] varchar(255),
		[KOL_TERBURUK_HARIAN] varchar(255),
		[KOL_TERBAIK_01-05] varchar(255),
		[KOL_TERBAIK_06-10] varchar(255),
		[KOL_TERBAIK_11-15] varchar(255),
		[KOL_TERBAIK_16-20] varchar(255),
		[KOL_TERBAIK_21-25] varchar(255),
		[KOL_TERBAIK_26-31] varchar(255),
		[KOL_TERBAIK_HARIAN] varchar(255),
		[TGL_ROLLBACK] varchar(255)
	);
END TRY
BEGIN CATCH
END CATCH

TRUNCATE TABLE [report].[KOL_DAILY];

INSERT INTO [report].[KOL_DAILY]

SELECT
	[TGL_DATA],
	[NOLOAN],
	[NOMORCIF],
	[SUPERCIF],
	[NAMANASABAH],
	[KODECABANG],
	[NAMACABANG],
	[AREA],
	[REGION],
	[DIVISI],
	[PRODUK],
	[PRODUK_DETAIL],
	[JENISPIUTANGPEMBIAYAAN],
	[CYCLE],
	[KOL_LOAN_LM],
	[KOL_CIF_LM],
	[KOL_SUPERCIF_LM],
	[KOL_LOAN],
	[KOL_CIF],
	[KOL_SUPERCIF]
	,CAST(KOL_01 AS varchar(255)) AS KOL_01
	,CAST(KOL_02 AS varchar(255)) AS KOL_02
	,CAST(KOL_03 AS varchar(255)) AS KOL_03
	,CAST(KOL_04 AS varchar(255)) AS KOL_04
	,CAST(KOL_05 AS varchar(255)) AS KOL_05
	,CAST(KOL_06 AS varchar(255)) AS KOL_06
	,CAST(KOL_07 AS varchar(255)) AS KOL_07
	,CAST(KOL_08 AS varchar(255)) AS KOL_08
	,CAST(KOL_09 AS varchar(255)) AS KOL_09
	,CAST(KOL_10 AS varchar(255)) AS KOL_10
	,CAST(KOL_11 AS varchar(255)) AS KOL_11
	,CAST(KOL_12 AS varchar(255)) AS KOL_12
	,CAST(KOL_13 AS varchar(255)) AS KOL_13
	,CAST(KOL_14 AS varchar(255)) AS KOL_14
	,CAST(KOL_15 AS varchar(255)) AS KOL_15
	,CAST(KOL_16 AS varchar(255)) AS KOL_16
	,CAST(KOL_17 AS varchar(255)) AS KOL_17
	,CAST(KOL_18 AS varchar(255)) AS KOL_18
	,CAST(KOL_19 AS varchar(255)) AS KOL_19
	,CAST(KOL_20 AS varchar(255)) AS KOL_20
	,CAST(KOL_21 AS varchar(255)) AS KOL_21
	,CAST(KOL_22 AS varchar(255)) AS KOL_22
	,CAST(KOL_23 AS varchar(255)) AS KOL_23
	,CAST(KOL_24 AS varchar(255)) AS KOL_24
	,CAST(KOL_25 AS varchar(255)) AS KOL_25
	,CAST(KOL_26 AS varchar(255)) AS KOL_26
	,CAST(KOL_27 AS varchar(255)) AS KOL_27
	,CAST(KOL_28 AS varchar(255)) AS KOL_28
	,CAST(KOL_29 AS varchar(255)) AS KOL_29
	,CAST(KOL_30 AS varchar(255)) AS KOL_30
	,CAST(KOL_31 AS varchar(255)) AS KOL_31

	,COALESCE(
		(SELECT MAX(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_01, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_02, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_03, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_04, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_05, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBURUK_01-05]

	,COALESCE(
		(SELECT MAX(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_06, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_07, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_08, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_09, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_10, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBURUK_06-10]

	,COALESCE(
		(SELECT MAX(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_11, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_12, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_13, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_14, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_15, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBURUK_11-15]

	,COALESCE(
		(SELECT MAX(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_16, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_17, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_18, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_19, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_20, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBURUK_16-20]

	,COALESCE(
		(SELECT MAX(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_21, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_22, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_23, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_24, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_25, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBURUK_21-25]

	,COALESCE(
		(SELECT MAX(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_26, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_27, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_28, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_29, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_30, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_31, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBURUK_26-31]

	,COALESCE(
		(SELECT MAX(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_01, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_02, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_03, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_04, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_05, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_06, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_07, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_08, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_09, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_10, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_11, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_12, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_13, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_14, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_15, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_16, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_17, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_18, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_19, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_20, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_21, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_22, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_23, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_24, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_25, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_26, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_27, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_28, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_29, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_30, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_31, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBURUK_HARIAN]



	,COALESCE(
		(SELECT MIN(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_01, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_02, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_03, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_04, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_05, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBAIK_01-05]

	,COALESCE(
		(SELECT MIN(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_06, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_07, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_08, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_09, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_10, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBAIK_06-10]

	,COALESCE(
		(SELECT MIN(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_11, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_12, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_13, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_14, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_15, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBAIK_11-15]

	,COALESCE(
		(SELECT MIN(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_16, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_17, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_18, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_19, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_20, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBAIK_16-20]

	,COALESCE(
		(SELECT MIN(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_21, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_22, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_23, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_24, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_25, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBAIK_21-25]

	,COALESCE(
		(SELECT MIN(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_26, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_27, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_28, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_29, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_30, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_31, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBAIK_26-31]

	,COALESCE(
		(SELECT MIN(KOL) AS KOL
			FROM (VALUES
				(NULLIF(NULLIF(KOL_01, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_02, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_03, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_04, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_05, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_06, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_07, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_08, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_09, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_10, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_11, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_12, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_13, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_14, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_15, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_16, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_17, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_18, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_19, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_20, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_21, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_22, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_23, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_24, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_25, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_26, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_27, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_28, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_29, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_30, 'Lunas'), 'Suspect'))
				,(NULLIF(NULLIF(KOL_31, 'Lunas'), 'Suspect'))
				) AS TB_TEMP(KOL)
		),
	[KOL_SUPERCIF]) AS [KOL_TERBAIK_HARIAN]
	,NULL
FROM
[BSI_FASTER].[report].[DAILY_PAYMENT];

UPDATE [report].[KOL_DAILY]
SET
[TGL_ROLLBACK] =	
	CASE
		WHEN [KOL_SUPERCIF] IN ('Lunas', 'Suspect', 'WO') THEN [KOL_SUPERCIF]
		WHEN COALESCE([KOL_SUPERCIF_LM], '1') < [KOL_SUPERCIF] THEN 'Downgrade'
		WHEN COALESCE([KOL_SUPERCIF_LM], '1') > [KOL_SUPERCIF] THEN 'Upgrade'
		WHEN COALESCE([KOL_SUPERCIF_LM], '1') = [KOL_SUPERCIF]
			AND COALESCE([KOL_SUPERCIF_LM], '1') = [KOL_TERBAIK_HARIAN]
			AND COALESCE([KOL_SUPERCIF_LM], '1') = [KOL_TERBURUK_HARIAN]
			THEN [NEW_BSI_COLLECTION].[dbo].[fx_ndigit_code]([CYCLE], 2)
		ELSE
			(
				SELECT TOP 1
					TGL
				FROM(
					VALUES
					(KOL_01, '01')
					,(KOL_02, '02')
					,(KOL_03, '03')
					,(KOL_04, '04')
					,(KOL_05, '05')
					,(KOL_06, '06')
					,(KOL_07, '07')
					,(KOL_08, '08')
					,(KOL_09, '09')
					,(KOL_10, '10')
					,(KOL_11, '11')
					,(KOL_12, '12')
					,(KOL_13, '13')
					,(KOL_14, '14')
					,(KOL_15, '15')
					,(KOL_16, '16')
					,(KOL_17, '17')
					,(KOL_18, '18')
					,(KOL_19, '19')
					,(KOL_20, '20')
					,(KOL_21, '21')
					,(KOL_22, '22')
					,(KOL_23, '23')
					,(KOL_24, '24')
					,(KOL_25, '25')
					,(KOL_26, '26')
					,(KOL_27, '27')
					,(KOL_28, '28')
					,(KOL_29, '29')
					,(KOL_30, '30')
					,(KOL_31, '31')
				)TEMP_TB(KOL, TGL)
			WHERE TEMP_TB.[KOL] = COALESCE([KOL_SUPERCIF_LM], '1')
				AND [TEMP_TB].[TGL] >= [dbo].[fx_ndigit_code]([CYCLE], 2)
			ORDER BY
				TEMP_TB.TGL ASC
			)
	END