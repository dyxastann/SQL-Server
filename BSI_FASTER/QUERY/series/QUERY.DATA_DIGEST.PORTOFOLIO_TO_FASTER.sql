SELECT
	TRY_CAST([(SOURCE) TGL_CURRENT] AS date) [TGL_DATA],
  TRY_CAST([(SOURCE) NOLOAN_CURRENT] AS varchar(255)) [NOLOAN],
  TRY_CAST(RIGHT([(SOURCE) NOMORCIF_CURRENT], 15) AS varchar(255)) [NOMORCIF],
  TRY_CAST(RIGHT([(FOG) SUPERCIF], 15) AS varchar(255)) [SUPERCIF],
  TRY_CAST([(SOURCE) NAMANASABAH] AS varchar(255)) [NAMANASABAH],
  TRY_CAST([(RCG) KODECABANG_BSI] AS varchar(255)) [KODECABANG],
  TRY_CAST([(RCG) NAMACABANG_BSI] AS varchar(255)) [NAMACABANG],
  TRY_CAST([(RCG) AREA_BSI] AS varchar(255)) [AREA],
  TRY_CAST([(RCG) REGION_BSI] AS varchar(255)) [REGION],
  TRY_CAST([(SOURCE) LOANTYPE] AS varchar(255)) [LOANTYPE],
  TRY_CAST([(RCG) DIVISI_BSI] AS varchar(255)) [DIVISI],
  TRY_CAST([(EDA) PRODUK] AS varchar(255)) [PRODUK],
  TRY_CAST([(EDA) PRODUK_DETAIL] AS varchar(255)) [PRODUK_DETAIL],
  TRY_CAST([(SOURCE) JENISPIUTANGPEMBIAYAAN] AS varchar(255)) [JENISPIUTANGPEMBIAYAAN],
  TRY_CAST([(SOURCE) TANGGAL_CAIR] AS date) [TANGGAL_CAIR],
  TRY_CAST([(SOURCE) TANGGAL_JATUH_TEMPO] AS date) [TANGGAL_JATUH_TEMPO],
  TRY_CAST([(RCG) CYCLE_ANGSURAN] AS int) [CYCLE],
  TRY_CAST([(SOURCE) DAYPASTDUE] AS int) [DPD],
  TRY_CAST([(RCG) KOL_LOAN_PECAH] AS varchar(255)) [KOL_LOAN],
  TRY_CAST([(RCG) KOL_CIF_PECAH] AS varchar(255)) [KOL_CIF],
  TRY_CAST([(RCG) KOL_CIF_PECAH] AS varchar(255)) [KOL_SUPERCIF],
  TRY_CAST([(RCG) OS_POKOK_PSAK_CURRENT] AS decimal(20,2)) [OS_POKOK_PSAK],
  TRY_CAST([(SOURCE) OS_POKOK_CURRENT] AS decimal(20,2)) [OS_POKOK],
  TRY_CAST([(SOURCE) OS_MARGIN_CURRENT] AS decimal(20,2)) [OS_MARGIN],
  TRY_CAST([(SOURCE) REALISASI_BAGIHASIL_CURRENT] AS decimal(20,2)) [REALISASI_BAGIHASIL],
  TRY_CAST([(SOURCE) PROYEKSI_BAGIHASIL_CURRENT] AS decimal(20,2)) [PROYEKSI_BAGIHASIL],
  TRY_CAST([(SOURCE) TUNGGAKAN_POKOK] AS decimal(20,2)) [TUNGGAKAN_POKOK],
  TRY_CAST([(SOURCE) TUNGGAKAN_MARGIN] AS decimal(20,2)) [TUNGGAKAN_MARGIN],
  TRY_CAST([(RCG) CKPN_CURRENT] AS decimal(20,2)) [CKPN],
  TRY_CAST(NULL AS decimal(20,2)) [SALDO_DPK],
  TRY_CAST(1 AS int) [ACCT]
INTO [series].[RCG.LOAN_DAILY.2023-05-31]
FROM [NEW_BSI_STORAGE].[dbo].[BSI.PORTOFOLIO_DAILY.2023-05-31]
WHERE [(RCG) KOL_CIF_PECAH] NOT IN ('Lunas', 'Suspect', 'WO')