/*
 Navicat Premium Data Transfer

 Source Server         : NEW_BSI_COLLECTION
 Source Server Type    : SQL Server
 Source Server Version : 11006020
 Source Host           : PC-RCG-KP54\RCGPC004_SQLSVR:1433
 Source Catalog        : BSI_FASTER
 Source Schema         : request

 Target Server Type    : SQL Server
 Target Server Version : 11006020
 File Encoding         : 65001

 Date: 30/08/2023 18:25:47
*/


-- ----------------------------
-- Table structure for FEEDING_DATA.KONSUMER_ALL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[request].[FEEDING_DATA.KONSUMER_ALL]') AND type IN ('U'))
	DROP TABLE [request].[FEEDING_DATA.KONSUMER_ALL]
GO

CREATE TABLE [request].[FEEDING_DATA.KONSUMER_ALL] (
  [TGL_DATA] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOANTYPE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPIUTANGPEMBIAYAAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL_CAIR] date  NULL,
  [TANGGAL_JATUH_TEMPO] date  NULL,
  [CYCLE] int  NULL,
  [DPD] int  NULL,
  [KOL_SUPERCIF_LM] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_LD] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK] decimal(20,2)  NULL,
  [OS_POKOK] decimal(20,2)  NULL,
  [OS_MARGIN] decimal(20,2)  NULL,
  [REALISASI_BAGIHASIL] decimal(20,2)  NULL,
  [PROYEKSI_BAGIHASIL] decimal(20,2)  NULL,
  [TUNGGAKAN_POKOK] decimal(20,2)  NULL,
  [TUNGGAKAN_MARGIN] decimal(20,2)  NULL,
  [ANGSURAN] decimal(20,2)  NULL,
  [CKPN] decimal(20,2)  NULL,
  [SCHEDULE_DATE] date  NULL,
  [REK_PEMBAYARAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_HP] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT_UTAMA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RT_RW] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KELURAHAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KECAMATAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KABUPATEN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROVINSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODE POS] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol iBSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol CIF Sistem] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Prov_Method] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MANUAL_AST_CLS] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Desc_CHG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Mutasi Bulanan_SCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Jenis Akad] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag JT Pembiayaan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tung_Gross] decimal(20,2)  NULL,
  [X Tunggak] decimal(20,2)  NULL,
  [Kekurangan angs Tertua] decimal(20,2)  NULL,
  [Proyeksi X Tunggakan Current] decimal(20,2)  NULL,
  [X Tunggakan Agar Naik] decimal(20,2)  NULL,
  [Min Payment Ugrade] decimal(20,2)  NULL,
  [Flag Min Payment] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag Hit NPF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Prognosa DPD Akhir Bulan] int  NULL
)
GO

ALTER TABLE [request].[FEEDING_DATA.KONSUMER_ALL] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for FEEDING_DATA.SME_MIKRO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[request].[FEEDING_DATA.SME_MIKRO]') AND type IN ('U'))
	DROP TABLE [request].[FEEDING_DATA.SME_MIKRO]
GO

CREATE TABLE [request].[FEEDING_DATA.SME_MIKRO] (
  [TGL_DATA] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOANTYPE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPIUTANGPEMBIAYAAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TANGGAL_CAIR] date  NULL,
  [TANGGAL_JATUH_TEMPO] date  NULL,
  [CYCLE] int  NULL,
  [DPD] int  NULL,
  [KOL_SUPERCIF_LM] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_LD] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK] decimal(20,2)  NULL,
  [OS_POKOK] decimal(20,2)  NULL,
  [OS_MARGIN] decimal(20,2)  NULL,
  [REALISASI_BAGIHASIL] decimal(20,2)  NULL,
  [PROYEKSI_BAGIHASIL] decimal(20,2)  NULL,
  [TUNGGAKAN_POKOK] decimal(20,2)  NULL,
  [TUNGGAKAN_MARGIN] decimal(20,2)  NULL,
  [ANGSURAN] decimal(20,2)  NULL,
  [CKPN] decimal(20,2)  NULL,
  [SCHEDULE_DATE] date  NULL,
  [REK_PEMBAYARAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_HP] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ALAMAT_UTAMA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RT_RW] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KELURAHAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KECAMATAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KABUPATEN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PROVINSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODE POS] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol iBSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Kol CIF Sistem] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Prov_Method] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MANUAL_AST_CLS] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Desc_CHG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Mutasi Bulanan_SCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Jenis Akad] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag JT Pembiayaan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Tung_Gross] decimal(20,2)  NULL,
  [X Tunggak] decimal(20,2)  NULL,
  [Kekurangan angs Tertua] decimal(20,2)  NULL,
  [Proyeksi X Tunggakan Current] decimal(20,2)  NULL,
  [X Tunggakan Agar Naik] decimal(20,2)  NULL,
  [Min Payment Ugrade] decimal(20,2)  NULL,
  [Flag Min Payment] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag Hit NPF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Prognosa DPD Akhir Bulan] int  NULL
)
GO

ALTER TABLE [request].[FEEDING_DATA.SME_MIKRO] SET (LOCK_ESCALATION = TABLE)
GO

