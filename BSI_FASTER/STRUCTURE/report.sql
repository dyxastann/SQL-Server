/*
 Navicat Premium Data Transfer

 Source Server         : NEW_BSI_COLLECTION
 Source Server Type    : SQL Server
 Source Server Version : 11006020
 Source Host           : PC-RCG-KP54\RCGPC004_SQLSVR:1433
 Source Catalog        : BSI_FASTER
 Source Schema         : report

 Target Server Type    : SQL Server
 Target Server Version : 11006020
 File Encoding         : 65001

 Date: 30/08/2023 18:25:40
*/


-- ----------------------------
-- Table structure for DAILY_PAYMENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[DAILY_PAYMENT]') AND type IN ('U'))
	DROP TABLE [report].[DAILY_PAYMENT]
GO

CREATE TABLE [report].[DAILY_PAYMENT] (
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
  [KOL_LOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_01] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_02] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_03] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_04] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_05] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_06] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_07] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_08] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_09] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_10] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_11] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_12] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_13] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_14] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_15] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_16] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_17] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_18] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_19] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_20] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_21] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_22] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_23] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_24] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_25] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_26] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_27] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_28] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_29] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_30] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_31] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CASH_IN_01] decimal(20,2)  NULL,
  [CASH_IN_02] decimal(20,2)  NULL,
  [CASH_IN_03] decimal(20,2)  NULL,
  [CASH_IN_04] decimal(20,2)  NULL,
  [CASH_IN_05] decimal(20,2)  NULL,
  [CASH_IN_06] decimal(20,2)  NULL,
  [CASH_IN_07] decimal(20,2)  NULL,
  [CASH_IN_08] decimal(20,2)  NULL,
  [CASH_IN_09] decimal(20,2)  NULL,
  [CASH_IN_10] decimal(20,2)  NULL,
  [CASH_IN_11] decimal(20,2)  NULL,
  [CASH_IN_12] decimal(20,2)  NULL,
  [CASH_IN_13] decimal(20,2)  NULL,
  [CASH_IN_14] decimal(20,2)  NULL,
  [CASH_IN_15] decimal(20,2)  NULL,
  [CASH_IN_16] decimal(20,2)  NULL,
  [CASH_IN_17] decimal(20,2)  NULL,
  [CASH_IN_18] decimal(20,2)  NULL,
  [CASH_IN_19] decimal(20,2)  NULL,
  [CASH_IN_20] decimal(20,2)  NULL,
  [CASH_IN_21] decimal(20,2)  NULL,
  [CASH_IN_22] decimal(20,2)  NULL,
  [CASH_IN_23] decimal(20,2)  NULL,
  [CASH_IN_24] decimal(20,2)  NULL,
  [CASH_IN_25] decimal(20,2)  NULL,
  [CASH_IN_26] decimal(20,2)  NULL,
  [CASH_IN_27] decimal(20,2)  NULL,
  [CASH_IN_28] decimal(20,2)  NULL,
  [CASH_IN_29] decimal(20,2)  NULL,
  [CASH_IN_30] decimal(20,2)  NULL,
  [CASH_IN_31] decimal(20,2)  NULL
)
GO

ALTER TABLE [report].[DAILY_PAYMENT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for FLOW_IN_FLOW_OUT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[FLOW_IN_FLOW_OUT]') AND type IN ('U'))
	DROP TABLE [report].[FLOW_IN_FLOW_OUT]
GO

CREATE TABLE [report].[FLOW_IN_FLOW_OUT] (
  [FLAG_DATA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_BEFORE] date  NULL,
  [TGL_CURRENT] date  NULL,
  [PERIODE] varchar(7) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL] int  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_BEFORE] decimal(20,2)  NULL,
  [ACCT_BEFORE] int  NULL,
  [OS_POKOK_PSAK_CURRENT] decimal(20,2)  NULL,
  [ACCT_CURRENT] int  NULL,
  [FLAG_PERGERAKAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMINAL_PERGERAKAN] decimal(20,2)  NULL,
  [ACCT_PERGERAKAN] int  NULL
)
GO

ALTER TABLE [report].[FLOW_IN_FLOW_OUT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for FLOW_IN_FLOW_OUT_MTM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[FLOW_IN_FLOW_OUT_MTM]') AND type IN ('U'))
	DROP TABLE [report].[FLOW_IN_FLOW_OUT_MTM]
GO

CREATE TABLE [report].[FLOW_IN_FLOW_OUT_MTM] (
  [FLAG_DATA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_BEFORE] date  NULL,
  [TGL_CURRENT] date  NULL,
  [PERIODE] varchar(7) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL] int  NULL,
  [AREA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_BEFORE] decimal(20,2)  NULL,
  [ACCT_BEFORE] int  NULL,
  [OS_POKOK_PSAK_CURRENT] decimal(20,2)  NULL,
  [ACCT_CURRENT] int  NULL,
  [FLAG_PERGERAKAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMINAL_PERGERAKAN] decimal(20,2)  NULL,
  [ACCT_PERGERAKAN] int  NULL
)
GO

ALTER TABLE [report].[FLOW_IN_FLOW_OUT_MTM] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for KOL_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[KOL_DAILY]') AND type IN ('U'))
	DROP TABLE [report].[KOL_DAILY]
GO

CREATE TABLE [report].[KOL_DAILY] (
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
  [KOL_LOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_01] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_02] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_03] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_04] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_05] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_06] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_07] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_08] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_09] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_10] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_11] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_12] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_13] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_14] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_15] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_16] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_17] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_18] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_19] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_20] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_21] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_22] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_23] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_24] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_25] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_26] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_27] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_28] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_29] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_30] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_31] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBURUK_01-05] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBURUK_06-10] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBURUK_11-15] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBURUK_16-20] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBURUK_21-25] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBURUK_26-31] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBURUK_HARIAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_01-05] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_06-10] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_11-15] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_16-20] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_21-25] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_26-31] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_HARIAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_ROLLBACK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [report].[KOL_DAILY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LIST_SOFIE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[LIST_SOFIE]') AND type IN ('U'))
	DROP TABLE [report].[LIST_SOFIE]
GO

CREATE TABLE [report].[LIST_SOFIE] (
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
  [KOL_LOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK] decimal(20,2)  NULL,
  [OS_POKOK] decimal(20,2)  NULL,
  [KRITERIA] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [report].[LIST_SOFIE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for NOMINASI_WO.UPDATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[NOMINASI_WO.UPDATE]') AND type IN ('U'))
	DROP TABLE [report].[NOMINASI_WO.UPDATE]
GO

CREATE TABLE [report].[NOMINASI_WO.UPDATE] (
  [TGL_BL] date  NULL,
  [TGL_UPDATE] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMACABANG_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI_BSI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DPD_BL] int  NULL,
  [TANGGAL_CAIR_BL] date  NULL,
  [TANGGAL_RESTRUKTUR_BL] date  NULL,
  [FLAG_RESTRUKTUR_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_SUPERCIF_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_BL] decimal(20,2)  NULL,
  [OS_POKOK_BL] decimal(20,2)  NULL,
  [CKPN_BL] decimal(20,2)  NULL,
  [NPWP_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DPD_SUPERCIF_BL] int  NULL,
  [TANGGAL_CAIR_SUPERCIF_BL] date  NULL,
  [TANGGAL_RESTRUKTUR_SUPERCIF_BL] date  NULL,
  [OS_POKOK_PSAK_SUPERCIF_BL] decimal(20,2)  NULL,
  [OS_POKOK_SUPERCIF_BL] decimal(20,2)  NULL,
  [CKPN_SUPERCIF_BL] decimal(20,2)  NULL,
  [FLAG_NPWP_SUPERCIF_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_RASIO_CKPN_SUPERCIF_BL] decimal(20,10)  NULL,
  [FLAG_REKOMENDASI_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_KETERANGAN_REKOMENDASI_BL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DPD_UPDATE] int  NULL,
  [TANGGAL_CAIR_UPDATE] date  NULL,
  [TANGGAL_RESTRUKTUR_UPDATE] date  NULL,
  [FLAG_RESTRUKTUR_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_LOAN_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_CIF_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_SUPERCIF_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_TERBAIK_SUPERCIF_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_UPDATE] decimal(20,2)  NULL,
  [OS_POKOK_UPDATE] decimal(20,2)  NULL,
  [CKPN_UPDATE] decimal(20,2)  NULL,
  [NPWP_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DPD_SUPERCIF_UPDATE] int  NULL,
  [TANGGAL_CAIR_SUPERCIF_UPDATE] date  NULL,
  [TANGGAL_RESTRUKTUR_SUPERCIF_UPDATE] date  NULL,
  [FLAG_RESTRUKTUR SCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK_SUPERCIF_UPDATE] decimal(20,2)  NULL,
  [OS_POKOK_SUPERCIF_UPDATE] decimal(20,2)  NULL,
  [CKPN_SUPERCIF_UPDATE] decimal(20,2)  NULL,
  [FLAG_NPWP_SUPERCIF_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_RASIO_CKPN_SUPERCIF_UPDATE] decimal(20,10)  NULL,
  [FLAG_REKOMENDASI_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_KETERANGAN_REKOMENDASI_UPDATE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_REKOMENDASI_UPDATE SCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG_KETERANGAN_REKOMENDASI_UPDATE SCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag CKPN BL SCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag BtB] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag OS Sys khusus Flag BtB] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Keterangan Nota] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag OS Sys SCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Flag Pawning] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [report].[NOMINASI_WO.UPDATE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH]') AND type IN ('U'))
	DROP TABLE [report].[PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH]
GO

CREATE TABLE [report].[PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH] (
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KETERANGAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [report].[PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF]') AND type IN ('U'))
	DROP TABLE [report].[PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF]
GO

CREATE TABLE [report].[PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF] (
  [TGL_AKTIF_AKHIR] date  NULL,
  [OS_PSAK_CIF] decimal(20,2)  NULL,
  [KOL] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LEGACY] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AREA_CIF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REGION_CIF] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_HP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NO_TELP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KTP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NPWP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TGL_LAHIR] date  NULL,
  [TGL_WO] date  NULL,
  [DIVISI] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KETERANGAN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG RCG] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [report].[PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PORTOFOLIO.ONBS.SUSPECT_SUPERCIF
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[report].[PORTOFOLIO.ONBS.SUSPECT_SUPERCIF]') AND type IN ('U'))
	DROP TABLE [report].[PORTOFOLIO.ONBS.SUSPECT_SUPERCIF]
GO

CREATE TABLE [report].[PORTOFOLIO.ONBS.SUSPECT_SUPERCIF] (
  [LEGACY] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAMANASABAH_SUPERCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POIN] decimal(20,4)  NULL
)
GO

ALTER TABLE [report].[PORTOFOLIO.ONBS.SUSPECT_SUPERCIF] SET (LOCK_ESCALATION = TABLE)
GO

