SELECT
	[CUR].[NOLOAN]
	,[CUR].[NOMORCIF]
	,[CUR].[SUPERCIF]
	,[CUR].[NAMANASABAH]
	,[CUR].[KODECABANG]
	,[CUR].[NAMACABANG]
	,[CUR].[AREA]
	,[CUR].[REGION]
	,[CUR].[DIVISI]
	,[CUR].[PRODUK]
	,[CUR].[PRODUK_DETAIL]
	,COALESCE([CRG].[StatusPayroll], [CRG_SUPERCIF].[StatusPayroll], 'Non Payroll') [StatusPayroll]
	,CASE
		WHEN [CRG].[Jenis_Pekerjaan_EFO_WISE_FOS] IN (
			'Dokter PNS '
			,'Dokter Swasta '
			,'Golbertap'
			,'Peg. BUMN '
			,'Peg. BUMN/BUMD '
			,'Peg. Negeri '
			,'Peg. Swasta '
			,'TNI/Polri '
		) THEN 'GOLBERTAP'
		WHEN [CRG].[Jenis_Pekerjaan_EFO_WISE_FOS] IS NOT NULL THEN 'NON GOLBERTAP'
		ELSE [CRG_SUPERCIF].[FLAG_GOLBERTAP]
	END [FLAG_GOLBERTAP]
FROM [series].[RCG.LOAN_DAILY.2023-05-31 (FINAL)] [CUR]
LEFT JOIN [series].[CRG.LOAN_DAILY.2023-04-30] [CRG]
	ON [CUR].[NOLOAN] = [CRG].[NOLOAN]
OUTER APPLY (
	SELECT
		MAX([StatusPayroll]) [StatusPayroll]
		,MIN(
			CASE
				WHEN [Jenis_Pekerjaan_EFO_WISE_FOS] IN (
					'Dokter PNS '
					,'Dokter Swasta '
					,'Golbertap'
					,'Peg. BUMN '
					,'Peg. BUMN/BUMD '
					,'Peg. Negeri '
					,'Peg. Swasta '
					,'TNI/Polri '
				) THEN 'GOLBERTAP'
			ELSE 'NON GOLBERTAP'
			END
		) [FLAG_GOLBERTAP]
	FROM [series].[CRG.LOAN_DAILY.2023-04-30] [CRG]
	WHERE [CUR].[NomorCIF] = [NomorCIF]
) [CRG_SUPERCIF]
/*
OUTER APPLY (
	SELECT
		MAX([KOL_LOAN]) [KOL_LOAN]
		,MAX([KOL_CIF]) [KOL_CIF]
		,MAX([KOL_SUPERCIF]) [KOL_SUPERCIF]
	FROM [series].[RCG.LOAN_DAILY.2023-04-30 (FINAL)]
	WHERE [CUR].[NOLOAN] = [NOLOAN]
) [BY_LOAN]
OUTER APPLY (
	SELECT
		MAX([KOL_LOAN]) [KOL_LOAN]
		,MAX([KOL_CIF]) [KOL_CIF]
		,MAX([KOL_SUPERCIF]) [KOL_SUPERCIF]
	FROM [series].[RCG.LOAN_DAILY.2023-04-30 (FINAL)]
	WHERE [CUR].[NOMORCIF] = [NOMORCIF]
) [BY_CIF]
OUTER APPLY (
	SELECT
		MAX([KOL_LOAN]) [KOL_LOAN]
		,MAX([KOL_CIF]) [KOL_CIF]
		,MAX([KOL_SUPERCIF]) [KOL_SUPERCIF]
	FROM [series].[RCG.LOAN_DAILY.2023-04-30 (FINAL)]
	WHERE [CUR].[SUPERCIF] = [SUPERCIF]
) [BY_SUPERCIF]
*/