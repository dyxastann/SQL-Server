/*
 Navicat Premium Data Transfer

 Source Server         : NEW_BSI_COLLECTION
 Source Server Type    : SQL Server
 Source Server Version : 11006020
 Source Host           : PC-RCG-KP54\RCGPC004_SQLSVR:1433
 Source Catalog        : BSI_FASTER
 Source Schema         : source

 Target Server Type    : SQL Server
 Target Server Version : 11006020
 File Encoding         : 65001

 Date: 30/08/2023 18:26:08
*/


-- ----------------------------
-- Table structure for CARDLINK.LOAN_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[CARDLINK.LOAN_DAILY]') AND type IN ('U'))
	DROP TABLE [source].[CARDLINK.LOAN_DAILY]
GO

CREATE TABLE [source].[CARDLINK.LOAN_DAILY] (
  [TYPE] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENIS] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CUSTNO] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CARDNO] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SHORT_NAME] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PB] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AB] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CURRBAL] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CRELIM] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AVAILCRE] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AMTDUE] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DPD] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUCKET] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GOL] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DUEDATE] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FILE_DATE] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POSTFLG] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OPDT] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [L_zipcode] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [R_zipcode] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RArea] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LArea] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RO] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [R_city] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [L_city] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RKota] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LKota] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RPropinsi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LPropinsi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [stmbal] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rtlpribal] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rtlfeesvc] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cshpribal] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cshfeesvc] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POKOK] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [mphone] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [company] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LEVEL] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [scd] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CYCLE] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastPymnt_Date] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LstPay_Amount] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MLAP] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CARDNO_REAL] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bucket_Last] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gol_Last] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[CARDLINK.LOAN_DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CARDLINK.MISACBIC
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[CARDLINK.MISACBIC]') AND type IN ('U'))
	DROP TABLE [source].[CARDLINK.MISACBIC]
GO

CREATE TABLE [source].[CARDLINK.MISACBIC] (
  [Source] varchar(5000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[CARDLINK.MISACBIC] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CARDLINK.MISCRBIC
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[CARDLINK.MISCRBIC]') AND type IN ('U'))
	DROP TABLE [source].[CARDLINK.MISCRBIC]
GO

CREATE TABLE [source].[CARDLINK.MISCRBIC] (
  [Source] varchar(5000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[CARDLINK.MISCRBIC] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CARDLINK.MISCUBIC
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[CARDLINK.MISCUBIC]') AND type IN ('U'))
	DROP TABLE [source].[CARDLINK.MISCUBIC]
GO

CREATE TABLE [source].[CARDLINK.MISCUBIC] (
  [Source] varchar(5000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[CARDLINK.MISCUBIC] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CARDLINK.PAYMENT_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[CARDLINK.PAYMENT_DAILY]') AND type IN ('U'))
	DROP TABLE [source].[CARDLINK.PAYMENT_DAILY]
GO

CREATE TABLE [source].[CARDLINK.PAYMENT_DAILY] (
  [Account] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastTranDate] date  NULL,
  [TranDate] date  NULL,
  [TranCode] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Amount] numeric(32,2)  NULL,
  [RefNum] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SrcCode] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PB] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TranDesc] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PYMNT DATE] date  NULL,
  [TYPE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENIS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CUSTNO] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TB SEBELUM] date  NULL,
  [PB SEBELUM] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AB SEBELUM] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUCKET SEBELUMNYA] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GOL SEBELUMNYA] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POKOK SEBELUMNYA] numeric(32,2)  NULL,
  [MLAP SEBELUMNYA] numeric(32,2)  NULL,
  [TB UP DATE] date  NULL,
  [PB UP DATE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AB UP DATE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUCKET UP DATE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GOL UP DATE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POKOK UP DATE] numeric(32,2)  NULL,
  [MLAP UP DATE] numeric(32,2)  NULL,
  [ON/OFF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUCKET AWAL] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUCKET AKHIR] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATUS BUCKET] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GOL AWAL] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GOL AKHIR] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATUS GOL] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL HB] date  NULL,
  [DUNNER] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATUS BUCKET ML] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[CARDLINK.PAYMENT_DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.DMS_FIELD.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.DMS_FIELD.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.DMS_FIELD.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.DMS_FIELD.DAILY] (
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
  [Catatan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.DMS_FIELD.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.DMS_TELE.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.DMS_TELE.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.DMS_TELE.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.DMS_TELE.DAILY] (
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
  [Catatan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.DMS_TELE.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.GF.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.GF.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.GF.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.GF.DAILY] (
  [Region] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Area] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Timestamp] datetime  NULL,
  [Tanggal] date  NULL,
  [Release/ Not Release] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Username MCS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [User ID Koreksi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nama Account Maintenance] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nama AM Koreksi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NIP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Area Koreksi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor Loan Nasabah sesuai Data Sistem] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nama Nasabah] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Loan Legacy] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kolektibiltas] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Apakah Alamat Valid] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [*Apabila Alamat Tidak Valid, mohon isi alamat yang valid] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Apakah Nomor Telepon Valid] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [**Apabila Nomor Telepon Tidak Valid, mohon isi Nomor Telepon yan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMOR Emergency Contact] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMA Emergency Contact] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hubungan Emergency Contact] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bertemu Dengan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Collection Result] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bayar Melalui] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tanggal Janji Bayar (Maksimal 7 Hari setelah Promise To Pay / Ja] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Jumlah Yang Dibayarkan Nasabah] numeric(32,2)  NULL,
  [Exit Strategy] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Eskalasi Manager] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Catatan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.GF.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.MCS.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.MCS.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.MCS.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.MCS.DAILY] (
  [Agreement No] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Form ID] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status Task] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Prioritas] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Supervisor] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ARO ID] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Assignment Date] datetime  NULL,
  [Send Date] datetime  NULL,
  [Submitted Date] datetime  NULL,
  [Nama Customer] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [No Telp] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Alamat] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Notes] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SurveyID] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Latitude] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Longitude] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO. ID PEMBAYARAN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO. KONTRAK] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOAN TYPE] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL PENCAIRAN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL JATUH TEMPO] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENIS KELAMIN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMOR PONSEL NASABAH] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT NASABAH] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODE POS] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PEKERJAAN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DPD] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS POKOK] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS MARGIN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGANGAN POKOK] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGANGAN MARGIN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKAN PENALTY] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TOTAL TUNGGAKAN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLEKTIBILITAS] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SEGMENTASI] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMINAL PEMBAYARAN TERAKHIR] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG PTP TODAY] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACTION] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [APAKAH ALAMAT VALID?] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT BARU] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [APAKAH NO. TELEPON VALID?] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO. TELEPON BARU] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [APAKAH PEKERJAAN VALID?] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PEKERJAAN_1] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT PEKERJAAN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EMERGENCY CONTACT NO] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EMERGENCY CONTACT NAME] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EMERGENCY CONTACT RELATION] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POSISI LOKASI VISIT] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO NASABAH/ORANG YANG DITEMUI] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO RUMAH NASABAH] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BERTEMU DENGAN] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KETERANGAN BERTEMU DENGAN SIAPA] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLLECTION RESULT] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLLECTION RESULT_2] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BAYAR MELALUI] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO BUKTI] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JUMLAH YANG DITRANSFER] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL JANJI BAYAR] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TOTAL BAYAR] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FOTO PENAGIHAN / SLIP BUKTI SETOR] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXIT STRATEGY] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ESKALASI KE MANAGER] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CATATAN / NOTES] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.MCS.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.PDS.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.PDS.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.PDS.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.PDS.DAILY] (
  [Nama Kolektor ] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tanggal Dihubungi ] date  NULL,
  [Divisi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CIF] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor Loan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nomor Yang Dihubungi] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hubungan] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HASIL] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Remark] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bucket] nvarchar(1023) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.PDS.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.SMS_BLAST.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.SMS_BLAST.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.SMS_BLAST.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.SMS_BLAST.DAILY] (
  [(SOURCE) NOLOAN_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NOMORCIF_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_TELP_RUMAH] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_HP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tgl Kirim SMS] date  NULL,
  [NO_HP3] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_HP4] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol saat SMS] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hasil SMS] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.SMS_BLAST.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.VOICE_BLAST.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.VOICE_BLAST.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.VOICE_BLAST.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.VOICE_BLAST.DAILY] (
  [Tgl Kirim Voice Blast] date  NULL,
  [Nomor BSI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_HP ASELI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Provider] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Durasi] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status call] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [No_HP_2] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOLOAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOCIF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol saat Televoice] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.VOICE_BLAST.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for COLLSYS.REPORT.WA_BLAST.DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[COLLSYS.REPORT.WA_BLAST.DAILY]') AND type IN ('U'))
	DROP TABLE [source].[COLLSYS.REPORT.WA_BLAST.DAILY]
GO

CREATE TABLE [source].[COLLSYS.REPORT.WA_BLAST.DAILY] (
  [(SOURCE) NOLOAN_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NOMORCIF_CURRENT] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_TELP_RUMAH] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [(SOURCE) NO_HP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tgl Kirim] date  NULL,
  [Kol saat WA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hasil WA] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[COLLSYS.REPORT.WA_BLAST.DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for DDM.LOAN_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[DDM.LOAN_DAILY]') AND type IN ('U'))
	DROP TABLE [source].[DDM.LOAN_DAILY]
GO

CREATE TABLE [source].[DDM.LOAN_DAILY] (
  [periodeData] date  NULL,
  [cabangBSI] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [regionBSI] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [areaBSI] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [noCif] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [namaNasabah] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kategoriUsaha] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [golonganNasabah] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [jenisPenggunaan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [noRekeningLegacy] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [noRekening] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [akad] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sektorEkonomi] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kolektibilitas] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tanggalBuka] date  NULL,
  [tanggalTutup] date  NULL,
  [kodeTenor] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [segmenLegacy] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kodeBU] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [segmenBSI] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kodeProduk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [namaProduk] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [namaProdukBSI] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [subProduct1] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [subProduct2] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [jenisValuta] varchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sisaPokok] numeric(32,2)  NULL,
  [sisaPokokPSAK] numeric(32,2)  NULL,
  [sisaMargin] numeric(32,2)  NULL,
  [tunggakanPokok] numeric(32,2)  NULL,
  [tunggakanHari] numeric(32,2)  NULL,
  [CKPN] numeric(32,2)  NULL,
  [restru] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kategoriPortofolio] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [lembagaPemeringkat] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [nilaiPeringkat] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kodeAO] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [pencairanPokok] numeric(32,2)  NULL,
  [kodePekerjaan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [groupNasabah] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rekPembyPokok] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [hubunganDenganBank] int  NULL,
  [noRekeningManual_flag] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [periodeAngsuranPokokBerikutnya] date  NULL,
  [angsuranPokokBerikutnya] numeric(32,2)  NULL,
  [periodeAngsuranMarginBerikutnya] int  NULL,
  [angsuranMarginBerikutnya] numeric(32,2)  NULL,
  [periodeAngsuranTerakhir] int  NULL,
  [angsuranMarginTerakhir] int  NULL,
  [statusPencairan] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [pricing] numeric(32,2)  NULL,
  [eqvRate] numeric(32,2)  NULL,
  [irrRate] numeric(32,2)  NULL,
  [imbalanAwalKontrak] numeric(32,2)  NULL,
  [imbalanBulanLaporan] numeric(32,2)  NULL,
  [imbalanAkanDiterima] numeric(32,2)  NULL,
  [noCIF_Legacy] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IAR_REF] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kode_AO2] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kol_bulanLalu] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kol_rek] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [extendDate] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [saldoDPK] numeric(32,2)  NULL,
  [LAST_PK_DATE] date  NULL,
  [GAS_CUS] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tunggakanMargin] numeric(32,2)  NULL,
  [realisasiBagiHasil] numeric(32,2)  NULL,
  [proyeksiBagiHasil] numeric(32,2)  NULL,
  [tunggakanDenda] numeric(32,2)  NULL,
  [agunanJaminanJenis] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [agunanJaminanNomor] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [agunanJaminanJumlah] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [agunanJaminanTotal] numeric(32,2)  NULL,
  [restructFlag] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [restructDate] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [pencairanMarginConversion] numeric(32,2)  NULL,
  [namaPerusahaanNasabah] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [napNo] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [pekerjaan] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [statusPencairanDesk] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kodeAgent] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kodeAgentDesk] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [manualAstCls] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [desc_chg] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [debtorCont] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [debtorProb] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [legacyId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [saldoHargaPokok] numeric(32,2)  NULL,
  [RPIM_TYPE] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKUMULASI_RBH_PBH] numeric(32,2)  NULL,
  [promotion] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sbge_no] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[DDM.LOAN_DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for DS_CONSUMER.REFERAL_JFAST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[DS_CONSUMER.REFERAL_JFAST]') AND type IN ('U'))
	DROP TABLE [source].[DS_CONSUMER.REFERAL_JFAST]
GO

CREATE TABLE [source].[DS_CONSUMER.REFERAL_JFAST] (
  [NOLOAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLPENCAIRAN] date  NULL,
  [KODECABANGBARU] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KETERANGAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[DS_CONSUMER.REFERAL_JFAST] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for FOG.LOAN_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[FOG.LOAN_DAILY]') AND type IN ('U'))
	DROP TABLE [source].[FOG.LOAN_DAILY]
GO

CREATE TABLE [source].[FOG.LOAN_DAILY] (
  [NOLOAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMALENGKAP] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANGBARU] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OSPOKOKCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLPENCAIRAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI_FINAL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_FINAL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_FINAL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_FINAL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_BL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FICMISDATE] date  NULL
)
GO

ALTER TABLE [source].[FOG.LOAN_DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for IFOIS.COLL_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[IFOIS.COLL_DAILY]') AND type IN ('U'))
	DROP TABLE [source].[IFOIS.COLL_DAILY]
GO

CREATE TABLE [source].[IFOIS.COLL_DAILY] (
  [AS_OF_DT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOAN_BARU] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOAN_LAMA] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OUTLET] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKAD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IDCOLL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PERCENALLOC] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLLATERAL_TYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISAGUNAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NILAIPENGIKATAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLPENGIKATAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPENGIKATAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANOTARIS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NILAIASURANSI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLJTASURANSI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMAASURANSI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NILAILIKUIDITAS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NILAIPASAR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLTAKSASI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENILAI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUKTIKEPEMILIKAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAGTGLTAKSASI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT_AGUNAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODE_KOTA] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BRANCH_CD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LAND_DIMENSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUILD_DIMENSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PAWNED_TYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KARATASE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UNIT_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CURRENCY] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LIMIT_REFERENCE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXPIRY_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DESCRIPTION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [APPLICATION_ID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXECUTION_VALUE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CENTRAL_BANK_VALUE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLL_RANK_LEVEL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLL_RATE_INST] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [COLL_RATE_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOTARY_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BI_ASURANCE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OWN_AUTH_NAME] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SID_LOC_CODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_APPRAISAL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IN_APPRAISER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[IFOIS.COLL_DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for IFOIS.LOAN_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[IFOIS.LOAN_DAILY]') AND type IN ('U'))
	DROP TABLE [source].[IFOIS.LOAN_DAILY]
GO

CREATE TABLE [source].[IFOIS.LOAN_DAILY] (
  [FICMISDATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOLOAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMALENGKAP] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANGBARU] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPIUTANGPEMBIAYAAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPENGGUNAANCODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLPENCAIRAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLJTTEMPO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DAYPASTDUE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CURRENCY] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOANTYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CATEGORY] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RESTRUCTFLAG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRICING] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REKPEMBYPOKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TENOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RESTRUCTDATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLBSM] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLCIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OSPOKOKCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OSMARGINCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OSGROSSCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANPOKOKCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANMARGINCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANGROSSCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENCAIRANPOKOKCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENCAIRANMARGINCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENCAIRANGROSSCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REALISASI_BAGIHASIL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROYEKSI_BAGIHASIL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACCOUNTOFFICER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACCOUNTOFFICER2] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EQVRATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [INTEREST_RATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MISACCOUNTOFFICR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMAPERUSAHAANNASABAH] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LD_ECONOMICSECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANPENALTYCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAPNO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SCHEDTYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SOCODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PEKERJAAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SEGMENTASI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATUS_PENCAIRAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RELATED_TRN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SIDECOSECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODE_AGENT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KET_KODE_AGENT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SCHD_DT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ANGSURAN_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ANGSURAN_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ANGSURAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_BUKA_CIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL_LAHIR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ADDRESS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RT_RW] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KELURAHAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KECAMATAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KABUPATEN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROPINSI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HP] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TAX_ID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EDUCATION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GENDER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MANUAL_AST_CLS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DESC_CHG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MUR_QRD_ID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DEBTOR_CONT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DEBTOR_PROB] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROV_METHOD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXTEND_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXTEND_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BANK_TAKEOVER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOTES] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOTES_PARENT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FIRST_PK_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OMSET_TAHUNAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SCIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LEGACY_ID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATUS_PEMBIAYA] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CLASS_OF_CREDIT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PORTFOLIO_CATEG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CONDITION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CONDITION_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROJECT_LOCATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GAS_CUS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STAGNANT_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STAGNANT_REASON] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ECONOMIC_SECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TYPE_OF_USE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ORIENTATION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TYPES_INTS_RATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GOV_PROG_LOAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOANS_CHARC] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PLAOB_TYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PK_NUMBER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LAST_PK_NUMBER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LAST_PK_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROJECT_AMT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PLAOB_SID_GNTR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RESTRUCT_ID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RESTRUCT_FIRST] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RESTRUCT_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LEGAL_ID_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BK_NISBAH_DEFT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RPIM_TYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[IFOIS.LOAN_DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MIS.IFOS_JFAST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[MIS.IFOS_JFAST]') AND type IN ('U'))
	DROP TABLE [source].[MIS.IFOS_JFAST]
GO

CREATE TABLE [source].[MIS.IFOS_JFAST] (
  [FICMISDATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOLOAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMALENGKAP] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANGBARU] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPIUTANGPEMBIAYAAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPENGGUNAANCODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SEKTOREKONOMICODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLPENCAIRAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGLJTTEMPO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DAYPASTDUE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CURRENCY] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOANTYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CATEGORY] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RESTRUCTFLAG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRICING] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REKPEMBYPOKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TENOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RESTRUCTDATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLBSM] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOLCIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SOURCEDATACODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OSPOKOKCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OSMARGINCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OSGROSSCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANPOKOKCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANMARGINCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANGROSSCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENCAIRANPOKOKCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENCAIRANMARGINCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENCAIRANGROSSCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REALISASI_BAGIHASIL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROYEKSI_BAGIHASIL] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACCOUNTOFFICER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACCOUNTOFFICER2] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EQVRATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [INTEREST_RATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MISACCOUNTOFFICR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMAPERUSAHAANNASABAH] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LD_ECONOMICSECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TUNGGAKANPENALTYCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAPNO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SCHEDTYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SOCODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PEKERJAAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SEGMENTASI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATUS_PENCAIRAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RELATED_TRN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SIDECOSECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODE_AGENT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KET_KODE_AGENT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SCHD_DT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ANGSURAN_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ANGSURAN_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ANGSURAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_BUKA_CIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL_LAHIR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CABANG_CIF] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ADDRESS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RT_RW] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KELURAHAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KECAMATAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KABUPATEN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROPINSI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HP] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ECO_SECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SID_ECO_SECTOR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TAX_ID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EDUCATION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GENDER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MANUAL_AST_CLS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DESC_CHG] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MUR_QRD_ID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DEBTOR_CONT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DEBTOR_PROB] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROV_METHOD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXTEND_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXTEND_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BANK_TAKEOVER] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOTES] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOTES_PARENT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FIRST_PK_DATE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OMSET_TAHUNAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SRC] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [f088] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[MIS.IFOS_JFAST] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MIS.LD_PASTDUE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[MIS.LD_PASTDUE]') AND type IN ('U'))
	DROP TABLE [source].[MIS.LD_PASTDUE]
GO

CREATE TABLE [source].[MIS.LD_PASTDUE] (
  [AS_OF_DT] date  NULL,
  [NOMORLD] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CCY] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGALTUNGGAKAN] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PAY_TYPE] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PAY_AMT_ORIG] decimal(20,2)  NULL,
  [REPAID_AMT] decimal(20,2)  NULL
)
GO

ALTER TABLE [source].[MIS.LD_PASTDUE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MIS.LD_PAYMENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[MIS.LD_PAYMENT]') AND type IN ('U'))
	DROP TABLE [source].[MIS.LD_PAYMENT]
GO

CREATE TABLE [source].[MIS.LD_PAYMENT] (
  [AS_OF_DT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORLD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REKENING_PEMBAYARAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AMOUNT_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AMOUNT_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TOTALAMOUNT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[MIS.LD_PAYMENT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MIS.LD_PROJECTED
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[MIS.LD_PROJECTED]') AND type IN ('U'))
	DROP TABLE [source].[MIS.LD_PROJECTED]
GO

CREATE TABLE [source].[MIS.LD_PROJECTED] (
  [AS_OF_DT] date  NULL,
  [LOANNO] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SCHD_DT] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROYEKSI] decimal(20,2)  NULL,
  [DEKLARASI] decimal(20,2)  NULL,
  [REALISASI] decimal(20,2)  NULL,
  [TUNGGAKAN] decimal(20,2)  NULL,
  [BAGIHASILPERC] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[MIS.LD_PROJECTED] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MIS.WRITE_OFF
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[source].[MIS.WRITE_OFF]') AND type IN ('U'))
	DROP TABLE [source].[MIS.WRITE_OFF]
GO

CREATE TABLE [source].[MIS.WRITE_OFF] (
  [AS_OF_DT] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RECID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_LOAN_WO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_LOAN_T24] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BRANCH_CD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CCY] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CIF_NO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMA] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOAN_TYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CATEGORY] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_WO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POKOK_WO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SISA_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MARGIN_WO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SISA_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PENALTI_PAID] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKUM_BYR_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKUM_BYR_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKUM_BYR_POKOK_MTD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKUM_BYR_MARGIN_MTD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKUM_BYR_POKOK_YTD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKUM_BYR_MARGIN_YTD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_BYR_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_BYR_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_CAIR] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ADDRESS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROPINSI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KECAMATAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KELURAHAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RT_RW] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODEPOS] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HP] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI_CD] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PLAFOND_CAIR_POKOK] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PLAFOND_CAIR_MARGIN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BANK_PORTION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [INS_PORTION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [INSURANCE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MAX_CLAIM] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REST_CLAIM] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [f041] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [source].[MIS.WRITE_OFF] SET (LOCK_ESCALATION = TABLE)
GO

