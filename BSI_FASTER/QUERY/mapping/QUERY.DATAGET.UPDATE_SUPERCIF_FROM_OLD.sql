-- TRUNCATE TABLE [mapping].[PORTOFOLIO.ONBS.CIF_DETAIL];
-- INSERT INTO [mapping].[PORTOFOLIO.ONBS.CIF_DETAIL] SELECT * FROM [NEW_BSI_DEV].[dbo].[PORTOFOLIO.ONBS.CIF_DETAIL];
-- 
-- TRUNCATE TABLE [mapping].[PORTOFOLIO.ONBS.LOAN_DETAIL];
-- INSERT INTO [mapping].[PORTOFOLIO.ONBS.LOAN_DETAIL] SELECT * FROM [NEW_BSI_DEV].[dbo].[PORTOFOLIO.ONBS.LOAN_DETAIL];
-- 
-- TRUNCATE TABLE [report].[PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH];
-- INSERT INTO [report].[PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH] SELECT * FROM [NEW_BSI_DEV].[dbo].[PORTOFOLIO.ONBS.INVALID_SUPERCIF_MATCH];
-- 
-- TRUNCATE TABLE [report].[PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF];
-- INSERT INTO [report].[PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF] SELECT * FROM [NEW_BSI_DEV].[dbo].[PORTOFOLIO.ONBS.REKAP_ADJUSTMENT_SUPERCIF];
-- 
-- TRUNCATE TABLE [report].[PORTOFOLIO.ONBS.SUSPECT_SUPERCIF];
-- INSERT INTO [report].[PORTOFOLIO.ONBS.SUSPECT_SUPERCIF] SELECT * FROM [NEW_BSI_DEV].[dbo].[PORTOFOLIO.ONBS.SUSPECT_SUPERCIF];

-- TRUNCATE TABLE [mapping].[PORTOFOLIO_ONBS.DATABASE.JOIN.EKSEKUSI_WO];
-- INSERT INTO [mapping].[PORTOFOLIO_ONBS.DATABASE.JOIN.EKSEKUSI_WO] SELECT * FROM [NEW_BSI_COLLECTION].[dbo].[PORTOFOLIO_ONBS.DATABASE.JOIN.EKSEKUSI_WO];
-- 
TRUNCATE TABLE [mapping].[PORTOFOLIO_ONBS.MAPPING.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN_CURRENT];
INSERT INTO [mapping].[PORTOFOLIO_ONBS.MAPPING.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN_CURRENT] SELECT * FROM [NEW_BSI_COLLECTION].[dbo].[PORTOFOLIO_ONBS.MAPPING.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN_CURRENT];

TRUNCATE TABLE [mapping].[PORTOFOLIO_ONBS.COMPILE.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN];
INSERT INTO [mapping].[PORTOFOLIO_ONBS.COMPILE.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN] SELECT * FROM [NEW_BSI_COLLECTION].[dbo].[PORTOFOLIO_ONBS.COMPILE.JOIN.REKAP_NOLOAN.MUTASI_NOLOAN];
-- 
-- TRUNCATE TABLE [mapping].[PORTOFOLIO.ONBS.REMOVE_LOAN];
-- INSERT INTO [mapping].[PORTOFOLIO.ONBS.REMOVE_LOAN] SELECT * FROM [NEW_BSI_DEV].[dbo].[PORTOFOLIO.ONBS.REMOVE_LOAN];