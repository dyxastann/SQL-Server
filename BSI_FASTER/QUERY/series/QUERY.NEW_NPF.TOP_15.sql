SELECT
	[PORTO].[TGL_DATA]
	,[PORTO].[SUPERCIF]
	,[PORTO].[NOLOAN]
	,[PORTO].[NAMANASABAH]
	,NEW_BSI_COLLECTION.dbo.fx_ndigit_code(REPLACE(REPLACE(REPLACE(REPLACE(COALESCE([CIF].[NPWP], [CIF].[KTP]), '.', ''), '-', ''), ' ', ''), '/', ''), 15) AS NO_ID
	,[PORTO].[JENISPIUTANGPEMBIAYAAN] AS AKAD_PEMBIAYAAN
	,FLOOR(COALESCE([IFOIS].[PENCAIRANPOKOKCONVERSION], [LD].[PENCAIRANPOKOKCONVERSION])/ 1000000) AS PLAFOND
	,FLOOR([PORTO].[OS_POKOK_PSAK]/ 1000000) AS baki_debet
	,NEW_BSI_COLLECTION.dbo.fx_ndigit_code(COALESCE([IFOIS].[SEKTOREKONOMICODE], [LD].[KODESEKTOREKONOMI]), 6) AS sektor_ekonomi
	,LEFT([PORTO].[KOL_SUPERCIF], 1) [Kolektibilitas]
	,NULL AS TINDAK_LANJUT
	,[RANKS].TOTAL_OS
	,[RANKS].rank
	,[PORTO].[DIVISI]
	,[PORTO].[PRODUK]
	,[PORTO].[NAMACABANG]
	,[PORTO].[AREA]
	,[PORTO].[REGION]
FROM
	[series].[RCG.LOAN_DAILY.2023-07-31 (FOG)] [PORTO]
LEFT JOIN 
(
	SELECT
		[PORTO].[SUPERCIF]
		,SUM([PORTO].[OS_POKOK_PSAK]) AS TOTAL_OS
		,RANK() OVER (ORDER BY SUM([PORTO].[OS_POKOK_PSAK]) DESC) AS [rank]
	FROM
		[series].[RCG.LOAN_DAILY.2023-07-31 (FOG)] [PORTO]
	LEFT JOIN [series].[RCG.LOAN_DAILY.2023-06-30 (FINAL)] [SOURCE]
		ON [PORTO].[NOLOAN] = [SOURCE].[NOLOAN]
	OUTER APPLY (
		SELECT
			COALESCE(MAX([BY_LOAN]), MAX([BY_CIF]) , MAX([BY_SUPERCIF])) [KOL_SUPERCIF]
		FROM (
			SELECT
				CASE WHEN [NOLOAN] IN (
					SELECT
						[NOLOAN_LAMA]
					FROM [mapping].[PORTOFOLIO_ONBS.COMPILE.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN]
					WHERE [NOLOAN_BARU] = [PORTO].[NOLOAN]
					AND [NOCIF_BARU] = [PORTO].[NOMORCIF]
					AND COALESCE([KETERANGAN], 'X') NOT IN ('Invalid')
				) OR [NOLOAN] = COALESCE([PORTO].[NOLOAN], 'X') THEN [KOL_SUPERCIF]
				WHEN [PORTO].[DIVISI] IN ('Pawning') THEN '1' END [BY_LOAN]
				,CASE WHEN [NOMORCIF] = [PORTO].[NOMORCIF] THEN [KOL_SUPERCIF] END [BY_CIF]
				,[KOL_SUPERCIF] [BY_SUPERCIF]
			FROM [series].[RCG.LOAN_DAILY.2023-06-30 (FINAL)]
			WHERE
				(
					[PORTO].[SUPERCIF] = [SUPERCIF]
				)
				AND
				(
					(
						[PORTO].[DIVISI] IN ('Hasanah Card')
						AND [DIVISI] IN ('Hasanah Card')
					)
					OR
					(
						[PORTO].[DIVISI] NOT IN ('Hasanah Card')
						AND [DIVISI] NOT IN ('Hasanah Card')
					)
				)
		) [SUB]
	) [M_1]
	WHERE
		COALESCE([SOURCE].[KOL_SUPERCIF], [M_1].[KOL_SUPERCIF], '1') IN ('1', '2A', '2B', '2C')
		AND [PORTO].[KOL_SUPERCIF] IN ('3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5')
	GROUP BY
		[PORTO].[SUPERCIF]
) [RANKS] ON [PORTO].[SUPERCIF] = [RANKS].[SUPERCIF]
LEFT JOIN [mapping].[PORTOFOLIO.ONBS.CIF_DETAIL] [CIF]
	ON [PORTO].[NOMORCIF] = [CIF].[NOMORCIF]
LEFT JOIN [mapping].[PORTOFOLIO.ONBS.LOAN_DETAIL] [LD]
	ON [PORTO].[NOLOAN] = [LD].[NOLOAN]
	AND [PORTO].[NOMORCIF] = [LD].[NOMORCIF]
LEFT JOIN [series].[IFOIS.LOAN_DAILY.2023-07-31] [IFOIS]
	ON [PORTO].[NOLOAN] = [IFOIS].[NOLOAN]
WHERE [RANKS].rank <= 20
AND [PORTO].[KOL_SUPERCIF] IN ('3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5')
ORDER BY
	[RANKS].rank
	,[PORTO].[OS_POKOK_PSAK] DESC;