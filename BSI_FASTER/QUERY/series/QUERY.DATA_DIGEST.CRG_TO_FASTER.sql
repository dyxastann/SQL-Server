BEGIN TRY
	DROP TABLE [series].[RCG.LOAN_DAILY.2021-11-30 (FINAL)];
END TRY
BEGIN CATCH
END CATCH

SELECT
	TRY_CAST([FicMisDate] AS date) [TGL_DATA],
  TRY_CAST([NoLoan] AS varchar(255)) [NOLOAN],
  TRY_CAST([NomorCIF] AS varchar(255)) [NOMORCIF],
  TRY_CAST([NomorCIF_Super] AS varchar(255)) [SUPERCIF],
  TRY_CAST([NamaNasabah] AS varchar(255)) [NAMANASABAH],
  TRY_CAST([KodeOutlet_BSI] AS varchar(255)) [KODECABANG],
  TRY_CAST([Nama_Outlet_BSI] AS varchar(255)) [NAMACABANG],
  TRY_CAST([Area_BSI] AS varchar(255)) [AREA],
  TRY_CAST([Regional_BSI] AS varchar(255)) [REGION],
  TRY_CAST(NULL AS varchar(255)) [LOANTYPE],
  TRY_CAST(REPLACE([Segmen_BSI], 'Consumer', 'Konsumer') AS varchar(255)) [DIVISI],
  TRY_CAST([Produk_BSI] AS varchar(255)) [PRODUK],
  TRY_CAST([Produk_BSI_Detail] AS varchar(255)) [PRODUK_DETAIL],
  TRY_CAST([JenisPiutangPembiayaan] AS varchar(255)) [JENISPIUTANGPEMBIAYAAN],
  TRY_CAST([Tgl_Pencairan] AS date) [TANGGAL_CAIR],
  TRY_CAST([Tgl_JatuhTempo] AS date) [TANGGAL_JATUH_TEMPO],
  TRY_CAST(NULL AS int) [CYCLE],
  TRY_CAST([DayPastDue] AS int) [DPD],
  TRY_CAST([KolLoan] AS varchar(255)) [KOL_LOAN],
  TRY_CAST([KolCIF_NonSuper] AS varchar(255)) [KOL_CIF],
  TRY_CAST([KolCIF] AS varchar(255)) [KOL_SUPERCIF],
  TRY_CAST([OSPokokConversion PSAK] AS decimal(20,2)) [OS_POKOK_PSAK],
  TRY_CAST([OSPokokConversion] AS decimal(20,2)) [OS_POKOK],
  TRY_CAST(NULL AS decimal(20,2)) [OS_MARGIN],
  TRY_CAST(NULL AS decimal(20,2)) [REALISASI_BAGIHASIL],
  TRY_CAST(NULL AS decimal(20,2)) [PROYEKSI_BAGIHASIL],
  TRY_CAST(NULL AS decimal(20,2)) [TUNGGAKAN_POKOK],
  TRY_CAST(NULL AS decimal(20,2)) [TUNGGAKAN_MARGIN],
  TRY_CAST([Nominal_CKPN-PPAP] AS decimal(20,2)) [CKPN],
  TRY_CAST(NULL AS decimal(20,2)) [SALDO_DPK],
  TRY_CAST(1 AS int) [ACCT]
INTO [series].[RCG.LOAN_DAILY.2021-11-30 (FINAL)]
FROM [NEW_BSI_REQUEST].[CRG].[PembiayaanBSI_2021-11-30];

UPDATE [series].[RCG.LOAN_DAILY.2021-11-30 (FINAL)]
SET
	[LOANTYPE] = [SOURCE].[kodeProduk]
	,[OS_MARGIN] = [SOURCE].[sisaMargin]
	,[REALISASI_BAGIHASIL] = [SOURCE].[realisasiBagiHasil]
	,[PROYEKSI_BAGIHASIL] = [SOURCE].[ProyeksiBagiHasil]
	,[TUNGGAKAN_POKOK] = [SOURCE].[tunggakanPokok]
	,[TUNGGAKAN_MARGIN] = [SOURCE].[tunggakanMargin]
	--,[SALDO_DPK] = [SOURCE].[saldoDPK]
FROM [series].[RCG.LOAN_DAILY.2021-11-30 (FINAL)] [TARGET]
LEFT JOIN [NEW_BSI_STORAGE].[dbo].[EDA.LOAN_DAILY.2021-11-30] [SOURCE]
	ON [TARGET].[NOLOAN] = [SOURCE].[noRekening];