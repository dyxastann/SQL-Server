/*
 Navicat Premium Data Transfer

 Source Server         : NEW_BSI_COLLECTION
 Source Server Type    : SQL Server
 Source Server Version : 11006020
 Source Host           : PC-RCG-KP54\RCGPC004_SQLSVR:1433
 Source Catalog        : BSI_FASTER
 Source Schema         : AI

 Target Server Type    : SQL Server
 Target Server Version : 11006020
 File Encoding         : 65001

 Date: 30/08/2023 18:25:00
*/


-- ----------------------------
-- Table structure for FEED.LOAN_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[AI].[FEED.LOAN_LIST]') AND type IN ('U'))
	DROP TABLE [AI].[FEED.LOAN_LIST]
GO

CREATE TABLE [AI].[FEED.LOAN_LIST] (
  [INDEX] bigint  IDENTITY(1,1) NOT NULL,
  [TGL_DATA] date  NULL,
  [NOLOAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KODECABANG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOANTYPE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPIUTANGPEMBIAYAAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CYCLE] int  NULL,
  [AGING] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KOL_FINAL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK] decimal(20,2)  NULL,
  [OS_POKOK_PSAK_FINAL] decimal(20,2)  NULL,
  [FLAG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [AI].[FEED.LOAN_LIST] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for FEED.NAME_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[AI].[FEED.NAME_LIST]') AND type IN ('U'))
	DROP TABLE [AI].[FEED.NAME_LIST]
GO

CREATE TABLE [AI].[FEED.NAME_LIST] (
  [INDEX] int  IDENTITY(1,1) NOT NULL,
  [NOMORCIF] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FULL_NAME] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [WORDING] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FLAG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [AI].[FEED.NAME_LIST] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MEMORY.NAME_COUNT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[AI].[MEMORY.NAME_COUNT]') AND type IN ('U'))
	DROP TABLE [AI].[MEMORY.NAME_COUNT]
GO

CREATE TABLE [AI].[MEMORY.NAME_COUNT] (
  [WORD] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ACCT] int  NULL,
  [FLAG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [AI].[MEMORY.NAME_COUNT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MEMORY.PREDICT_KOL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[AI].[MEMORY.PREDICT_KOL]') AND type IN ('U'))
	DROP TABLE [AI].[MEMORY.PREDICT_KOL]
GO

CREATE TABLE [AI].[MEMORY.PREDICT_KOL] (
  [TGL] int  NULL,
  [KOL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AGING] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DIVISI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PRODUK_DETAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LOANTYPE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JENISPIUTANGPEMBIAYAAN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CYCLE] int  NULL,
  [KOL_FINAL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OS_POKOK_PSAK] decimal(20,2)  NULL,
  [OS_POKOK_PSAK_FINAL] decimal(20,2)  NULL,
  [ACCT] int  NULL,
  [FLAG] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [AI].[MEMORY.PREDICT_KOL] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for FEED.LOAN_LIST
-- ----------------------------
DBCC CHECKIDENT ('[AI].[FEED.LOAN_LIST]', RESEED, 1339519)
GO


-- ----------------------------
-- Auto increment value for FEED.NAME_LIST
-- ----------------------------
DBCC CHECKIDENT ('[AI].[FEED.NAME_LIST]', RESEED, 683330)
GO


-- ----------------------------
-- Primary Key structure for table FEED.NAME_LIST
-- ----------------------------
ALTER TABLE [AI].[FEED.NAME_LIST] ADD CONSTRAINT [PK__FEED.NAM__E61849D8315F9874] PRIMARY KEY CLUSTERED ([INDEX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

