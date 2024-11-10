/*
 Navicat Premium Data Transfer

 Source Server         : NEW_BSI_COLLECTION
 Source Server Type    : SQL Server
 Source Server Version : 11006020
 Source Host           : PC-RCG-KP54\RCGPC004_SQLSVR:1433
 Source Catalog        : BSI_FASTER
 Source Schema         : compile

 Target Server Type    : SQL Server
 Target Server Version : 11006020
 File Encoding         : 65001

 Date: 30/08/2023 18:25:09
*/


-- ----------------------------
-- Table structure for COLLSYS.GENERATED.JOIN.DAILY_PAYMENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.GENERATED.JOIN.DAILY_PAYMENT]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.GENERATED.JOIN.DAILY_PAYMENT]
GO

CREATE TABLE [compile].[COLLSYS.GENERATED.JOIN.DAILY_PAYMENT] (
  [TGL_UPDATE] datetime  NULL,
  [Tgl Data] date  NULL,
  [LOAN_T24] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLLOAN_LAST] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLCIF_LAST] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLLOAN] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLCIF] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Pembayaran Pokok] decimal(32,2)  NULL,
  [Pembayaran Margin] decimal(32,2)  NULL,
  [Pembayaran Basil] decimal(32,2)  NULL,
  [Total Pembayaran] decimal(32,2)  NULL,
  [Action Plan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Program] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.GENERATED.JOIN.DAILY_PAYMENT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.DMS_FIELD.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.REPORT.DMS_FIELD.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.REPORT.DMS_FIELD.COMPILE]
GO

CREATE TABLE [compile].[COLLSYS.REPORT.DMS_FIELD.COMPILE] (
  [Regional] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Area] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [USERID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nama Kolektor] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tanggal Input] date  NULL,
  [Nomor Loan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nama Debitur] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tujuan Kunjungan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Orang Yang Dikunjungi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hubungan Yang Dikunjungi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hasil Kunjungan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Alasan Tidak Bayar] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rekomendasi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor CIF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS Pokok] numeric(32,2)  NULL,
  [OS Margin] numeric(32,2)  NULL,
  [Total] numeric(32,2)  NULL,
  [Kode Cabang] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Divisi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Catatan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERIODE_KUNJUNGAN] date  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.REPORT.DMS_FIELD.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.DMS_TELE.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.REPORT.DMS_TELE.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.REPORT.DMS_TELE.COMPILE]
GO

CREATE TABLE [compile].[COLLSYS.REPORT.DMS_TELE.COMPILE] (
  [Nama Kolektor] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tanggal Dihubungi] date  NULL,
  [Jam Dihubungi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CIF] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor Loan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor Yang Dihubungi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tujuan Menghubungi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Orang Yang Hubungi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hubungan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hasil] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Alasan Tidak Bayar] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rekomendasi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Catatan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERIODE_KUNJUNGAN] date  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.REPORT.DMS_TELE.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.MCS.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.REPORT.MCS.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.REPORT.MCS.COMPILE]
GO

CREATE TABLE [compile].[COLLSYS.REPORT.MCS.COMPILE] (
  [Agreement No] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Form ID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status Task] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Prioritas] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Supervisor] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ARO ID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Assignment Date] datetime  NULL,
  [Send Date] datetime  NULL,
  [Submitted Date] datetime  NULL,
  [Nama Customer] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [No Telp] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Alamat] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Notes] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SurveyID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Latitude] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Longitude] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO. ID PEMBAYARAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO. KONTRAK] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOAN TYPE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL PENCAIRAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL JATUH TEMPO] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENIS KELAMIN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMOR PONSEL NASABAH] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT NASABAH] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODE POS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PEKERJAAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DPD] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS POKOK] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS MARGIN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGANGAN POKOK] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGANGAN MARGIN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKAN PENALTY] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TOTAL TUNGGAKAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLEKTIBILITAS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SEGMENTASI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMINAL PEMBAYARAN TERAKHIR] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG PTP TODAY] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACTION] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [APAKAH ALAMAT VALID?] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT BARU] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [APAKAH NO. TELEPON VALID?] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO. TELEPON BARU] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [APAKAH PEKERJAAN VALID?] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PEKERJAAN_1] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT PEKERJAAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EMERGENCY CONTACT NO] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EMERGENCY CONTACT NAME] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EMERGENCY CONTACT RELATION] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POSISI LOKASI VISIT] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO NASABAH/ORANG YANG DITEMUI] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO RUMAH NASABAH] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BERTEMU DENGAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KETERANGAN BERTEMU DENGAN SIAPA] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLLECTION RESULT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLLECTION RESULT_2] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BAYAR MELALUI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO BUKTI] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JUMLAH YANG DITRANSFER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL JANJI BAYAR] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TOTAL BAYAR] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO PENAGIHAN / SLIP BUKTI SETOR] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXIT STRATEGY] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ESKALASI KE MANAGER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CATATAN / NOTES] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERIODE_KUNJUNGAN] date  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.REPORT.MCS.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.PDS.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.REPORT.PDS.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.REPORT.PDS.COMPILE]
GO

CREATE TABLE [compile].[COLLSYS.REPORT.PDS.COMPILE] (
  [Nama Kolektor ] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tanggal Dihubungi ] date  NULL,
  [Divisi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CIF] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor Loan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor Yang Dihubungi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hubungan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HASIL] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Remark] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bucket] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERIODE_KUNJUNGAN] date  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.REPORT.PDS.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.SMS_BLAST.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.REPORT.SMS_BLAST.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.REPORT.SMS_BLAST.COMPILE]
GO

CREATE TABLE [compile].[COLLSYS.REPORT.SMS_BLAST.COMPILE] (
  [(SOURCE) NOLOAN_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NOMORCIF_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_TELP_RUMAH] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_HP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tgl Kirim SMS] date  NULL,
  [NO_HP3] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_HP4] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol saat SMS] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hasil SMS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERIODE_KUNJUNGAN] date  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.REPORT.SMS_BLAST.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.VOICE_BLAST.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.REPORT.VOICE_BLAST.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.REPORT.VOICE_BLAST.COMPILE]
GO

CREATE TABLE [compile].[COLLSYS.REPORT.VOICE_BLAST.COMPILE] (
  [Tgl Kirim Voice Blast] date  NULL,
  [Nomor BSI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_HP ASELI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Provider] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Durasi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status call] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [No_HP_2] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOLOAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOCIF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol saat Televoice] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERIODE_KUNJUNGAN] date  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.REPORT.VOICE_BLAST.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.WA_BLAST.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[COLLSYS.REPORT.WA_BLAST.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[COLLSYS.REPORT.WA_BLAST.COMPILE]
GO

CREATE TABLE [compile].[COLLSYS.REPORT.WA_BLAST.COMPILE] (
  [(SOURCE) NOLOAN_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NOMORCIF_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_TELP_RUMAH] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_HP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tgl Kirim] date  NULL,
  [Kol saat WA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hasil WA] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERIODE_KUNJUNGAN] date  NULL
)
GO

ALTER TABLE [compile].[COLLSYS.REPORT.WA_BLAST.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for DAILY_PAYMENT.VERTICAL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[DAILY_PAYMENT.VERTICAL]') AND type IN ('U'))
	DROP TABLE [compile].[DAILY_PAYMENT.VERTICAL]
GO

CREATE TABLE [compile].[DAILY_PAYMENT.VERTICAL] (
  [INDEX] int  IDENTITY(1,1) NOT NULL,
  [TGL_LM] date  NULL,
  [TGL_LD] date  NULL,
  [TGL_DATA] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPIUTANGPEMBIAYAAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CYCLE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_LM] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_LM] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_LM] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_LD] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_LD] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_LD] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PAY_POKOK] decimal(20,2)  NULL,
  [PAY_MARGIN] decimal(20,2)  NULL,
  [PAY_BASIL] decimal(20,2)  NULL,
  [FLAG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KETERANGAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REK_PEMBAYARAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACTION_PLAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PAY_SUBROGASI] decimal(20,2)  NULL
)
GO

ALTER TABLE [compile].[DAILY_PAYMENT.VERTICAL] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LD_PAYMENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[LD_PAYMENT]') AND type IN ('U'))
	DROP TABLE [compile].[LD_PAYMENT]
GO

CREATE TABLE [compile].[LD_PAYMENT] (
  [AS_OF_DT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORLD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REKENING_PEMBAYARAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AMOUNT_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AMOUNT_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TOTALAMOUNT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [compile].[LD_PAYMENT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LIST_DG.DAILY.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[LIST_DG.DAILY.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[LIST_DG.DAILY.COMPILE]
GO

CREATE TABLE [compile].[LIST_DG.DAILY.COMPILE] (
  [TGL_BEFORE] date  NULL,
  [TGL_DATA] date  NULL,
  [TGL_REPORT] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CYCLE] int  NULL,
  [KOL_LOAN_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_BEFORE] decimal(20,2)  NULL,
  [OS_POKOK_BEFORE] decimal(20,2)  NULL,
  [OS_MARGIN_BEFORE] decimal(20,2)  NULL,
  [REALISASI_BAGIHASIL_BEFORE] decimal(20,2)  NULL,
  [RBH_PBH_BEFORE] decimal(20,10)  NULL,
  [OS_POKOK_PSAK_CURRENT] decimal(20,2)  NULL,
  [OS_POKOK_CURRENT] decimal(20,2)  NULL,
  [OS_MARGIN_CURRENT] decimal(20,2)  NULL,
  [REALISASI_BAGIHASIL_CURRENT] decimal(20,2)  NULL,
  [RBH_PBH_CURRENT] decimal(20,10)  NULL,
  [FLAG_DATA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENYEBAB] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [compile].[LIST_DG.DAILY.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LIST_DG.DAILY.COMPILE (CRG)
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[LIST_DG.DAILY.COMPILE (CRG)]') AND type IN ('U'))
	DROP TABLE [compile].[LIST_DG.DAILY.COMPILE (CRG)]
GO

CREATE TABLE [compile].[LIST_DG.DAILY.COMPILE (CRG)] (
  [TGL_BEFORE] date  NULL,
  [TGL_DATA] date  NULL,
  [TGL_REPORT] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_LM] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_BEFORE] decimal(20,2)  NULL,
  [OS_POKOK_BEFORE] decimal(20,2)  NULL,
  [OS_POKOK_PSAK_CURRENT] decimal(20,2)  NULL,
  [OS_POKOK_CURRENT] decimal(20,2)  NULL,
  [FLAG_DATA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENYEBAB] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [compile].[LIST_DG.DAILY.COMPILE (CRG)] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LIST_UG.DAILY.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[LIST_UG.DAILY.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[LIST_UG.DAILY.COMPILE]
GO

CREATE TABLE [compile].[LIST_UG.DAILY.COMPILE] (
  [TGL_BEFORE] date  NULL,
  [TGL_DATA] date  NULL,
  [TGL_REPORT] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CYCLE] int  NULL,
  [KOL_LOAN_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_BEFORE] decimal(20,2)  NULL,
  [OS_POKOK_BEFORE] decimal(20,2)  NULL,
  [OS_MARGIN_BEFORE] decimal(20,2)  NULL,
  [REALISASI_BAGIHASIL_BEFORE] decimal(20,2)  NULL,
  [RBH_PBH_BEFORE] decimal(20,10)  NULL,
  [OS_POKOK_PSAK_CURRENT] decimal(20,2)  NULL,
  [OS_POKOK_CURRENT] decimal(20,2)  NULL,
  [OS_MARGIN_CURRENT] decimal(20,2)  NULL,
  [REALISASI_BAGIHASIL_CURRENT] decimal(20,2)  NULL,
  [RBH_PBH_CURRENT] decimal(20,10)  NULL,
  [FLAG_DATA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENYEBAB] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [compile].[LIST_UG.DAILY.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LIST_UG.DAILY.COMPILE (CRG)
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[LIST_UG.DAILY.COMPILE (CRG)]') AND type IN ('U'))
	DROP TABLE [compile].[LIST_UG.DAILY.COMPILE (CRG)]
GO

CREATE TABLE [compile].[LIST_UG.DAILY.COMPILE (CRG)] (
  [TGL_BEFORE] date  NULL,
  [TGL_DATA] date  NULL,
  [TGL_REPORT] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_LM] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_BEFORE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_CURRENT] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_BEFORE] decimal(20,2)  NULL,
  [OS_POKOK_BEFORE] decimal(20,2)  NULL,
  [OS_POKOK_PSAK_CURRENT] decimal(20,2)  NULL,
  [OS_POKOK_CURRENT] decimal(20,2)  NULL,
  [FLAG_DATA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENYEBAB] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [compile].[LIST_UG.DAILY.COMPILE (CRG)] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RCG.REKAP_OUTLET.COMPILE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[compile].[RCG.REKAP_OUTLET.COMPILE]') AND type IN ('U'))
	DROP TABLE [compile].[RCG.REKAP_OUTLET.COMPILE]
GO

CREATE TABLE [compile].[RCG.REKAP_OUTLET.COMPILE] (
  [TGL_DATA] date  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_RESTRUKTUR] varchar(18) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_LAST] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Keterangan Mutasi] varchar(24) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK] float(53)  NULL,
  [OS_POKOK] float(53)  NULL,
  [PAY_POKOK] float(53)  NULL,
  [ACCT] int  NULL
)
GO

ALTER TABLE [compile].[RCG.REKAP_OUTLET.COMPILE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for DAILY_PAYMENT.VERTICAL
-- ----------------------------
DBCC CHECKIDENT ('[compile].[DAILY_PAYMENT.VERTICAL]', RESEED, 9772758)
GO


-- ----------------------------
-- Primary Key structure for table DAILY_PAYMENT.VERTICAL
-- ----------------------------
ALTER TABLE [compile].[DAILY_PAYMENT.VERTICAL] ADD CONSTRAINT [PK__DAILY_PA__E61849D89ABC1C0F] PRIMARY KEY CLUSTERED ([INDEX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

