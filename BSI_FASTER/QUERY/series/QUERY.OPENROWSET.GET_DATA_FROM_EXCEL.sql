--------------------------------------------------------------------------------------------
-- 
SELECT TOP 0 * INTO [series].[CARDLINK.LOAN_DAILY.2023-08-03] FROM [series].[CARDLINK.LOAN_DAILY.2023-07-26];
TRUNCATE TABLE [series].[CARDLINK.LOAN_DAILY.2023-08-03]
INSERT INTO [series].[CARDLINK.LOAN_DAILY.2023-08-03]
SELECT
	*
FROM
	OPENROWSET(
		'Microsoft.ACE.OLEDB.12.0'
		,'Excel 8.0;Database=E:\Standalone Apps\Ifois Auto-grabber\template import data 230803.xlsx;HDR=YES'
		,'SELECT
			[TYPE],
			[JENIS],
			[CUSTNO],
			[CARDNO],
			[SHORT_NAME],
			[PB],
			[AB],
			[CURRBAL],
			[CRELIM],
			[AVAILCRE],
			[AMTDUE],
			[DPD],
			[BUCKET],
			[GOL],
			[DUEDATE],
			[FILE_DATE],
			[POSTFLG],
			[OPDT],
			[L_zipcode],
			[R_zipcode],
			[RArea],
			[LArea],
			[RO],
			[R_city],
			[L_city],
			[RKota],
			[LKota],
			[RPropinsi],
			[LPropinsi],
			[stmbal],
			[rtlpribal],
			[rtlfeesvc],
			[cshpribal],
			[cshfeesvc],
			[POKOK],
			[mphone],
			[company],
			[LEVEL],
			[scd],
			[CYCLE],
			[LastPymnt_Date],
			[LstPay_Amount],
			[MLAP],
			[CARDNO_REAL],
			[Bucket_Last_Month],
			[Gol_Last_Month] FROM [Sheet1$]'
	) [A];
-- 	
-- TRUNCATE TABLE [NEW_BSI_COLLECTION].[dbo].[PORTOFOLIO_ONBS.SOURCE.BNIS.HASANAH_CARD];
-- INSERT INTO [NEW_BSI_COLLECTION].[dbo].[PORTOFOLIO_ONBS.SOURCE.BNIS.HASANAH_CARD] SELECT * FROM [series].[CARDLINK.LOAN_DAILY.2023-07-31];
-- 
--------------------------------------------------------------------------------------------

EXEC [dbo].[sp_procc_import_txt]
@SCHEMA_NAME = 'series'
,@TARGET = 'MIS.IFOS_JFAST.2023-08-03'
,@SOURCE = 'E:\Standalone Apps\Ifois Auto-grabber\20230803.IFOS_JFAST.txt';

--------------------------------------------------------------------------------------------

EXEC [dbo].[sp_procc_import_txt]
@SCHEMA_NAME = 'series'
,@TARGET = 'IFOIS.LOAN_DAILY.2023-08-03'
,@SOURCE = 'E:\Standalone Apps\Ifois Auto-grabber\2023-08-03_LOAN_DAILY.txt'
,@ROW_TERMINATOR = '0x0a';

--------------------------------------------------------------------------------------------

EXEC [mapping].[sp_dataget_cif_detail] @TARGET = '2023-08-03';
EXEC [main].[sp_procc_loan_daily] @TARGET = '2023-08-03';
EXEC [main].[sp_procc_portofolio_daily] @TARGET = '2023-08-03', @OVERRIDE = 'YES', @MODE = 'Hybrid';