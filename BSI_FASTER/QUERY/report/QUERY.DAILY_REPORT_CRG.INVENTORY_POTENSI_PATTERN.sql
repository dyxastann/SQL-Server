SELECT
	[KOL_SUPERCIF]
	,SUM([OS_POKOK_PSAK]) / 1000000000.00 [OS]
FROM [series].[RCG.LOAN_DAILY.2023-06-18]
WHERE [DIVISI] IN ('Konsumer', 'Hasanah Card', 'Pawning', 'Mikro', 'SME')
-- AND [DIVISI] IN ('Mikro')
-- AND [PRODUK] LIKE '%Pensiun%'
-- AND [PRODUK_DETAIL] LIKE '%FLPP%'
GROUP BY [KOL_SUPERCIF]
ORDER BY [KOL_SUPERCIF]