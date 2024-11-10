/*
 Navicat Premium Data Transfer

 Source Server         : NEW_BSI_COLLECTION
 Source Server Type    : SQL Server
 Source Server Version : 11006020
 Source Host           : PC-RCG-KP54\RCGPC004_SQLSVR:1433
 Source Catalog        : BSI_FASTER
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11006020
 File Encoding         : 65001

 Date: 30/08/2023 18:25:17
*/


-- ----------------------------
-- Table structure for COLUMN.DATA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[COLUMN.DATA]') AND type IN ('U'))
	DROP TABLE [dbo].[COLUMN.DATA]
GO

CREATE TABLE [dbo].[COLUMN.DATA] (
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
  [TUNGGAKANPENALTYCONVERSION] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NAPNO] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SCHEDTYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SOCODE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PEKERJAAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SEGMENTASI] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATUS_PENCAIRAN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RELATED_TRN] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
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
  [RPIM_TYPE] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[COLUMN.DATA] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MAPPING.FROM_DS_CONSUMER
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MAPPING.FROM_DS_CONSUMER]') AND type IN ('U'))
	DROP TABLE [dbo].[MAPPING.FROM_DS_CONSUMER]
GO

CREATE TABLE [dbo].[MAPPING.FROM_DS_CONSUMER] (
  [ficmisdate] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [noloan] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [nomorcif] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [kodecabangbaru] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [namacabang] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [area] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [roid] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [divisifinal] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [produkbsi] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [produkkonsumer] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [subprodukkonsumer] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [statusrek] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MAPPING.FROM_DS_CONSUMER] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Numbers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Numbers]') AND type IN ('U'))
	DROP TABLE [dbo].[Numbers]
GO

CREATE TABLE [dbo].[Numbers] (
  [N] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Numbers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- function structure for fx_adjustment_flag_dpd
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_flag_dpd]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_flag_dpd]
GO

CREATE FUNCTION [dbo].[fx_adjustment_flag_dpd]
( @DPD AS int
)
RETURNS varchar(MAX)
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN CASE WHEN @DPD IS NOT NULL AND @DPD != 0
		THEN
			CASE
			WHEN @DPD <= 90 THEN '1 s.d 90'
			WHEN @DPD <= 180 THEN '91 s.d 180'
			WHEN @DPD <= 270 THEN '181 s.d 270'
			WHEN @DPD > 270 THEN '270+'
			END
		ELSE NULL
		END
	RETURN NULL
END
GO


-- ----------------------------
-- function structure for fx_ndigit_code
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_ndigit_code]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_ndigit_code]
GO

CREATE FUNCTION [dbo].[fx_ndigit_code]
( @INPUT_ AS nvarchar(MAX) = '', @NUM AS INTEGER = 1
)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @result nvarchar(MAX), @stamp nvarchar(MAX) = '', @counter INTEGER = 0;
	WHILE @counter < @num
	BEGIN
		SET @stamp = CONCAT(@stamp, '0');
		SET @COUNTER += 1;
	END
	SET @result = CASE WHEN NULLIF(@INPUT_, '0') IS NULL THEN @stamp
	WHEN LEN(@INPUT_) = LEN(@stamp) THEN @INPUT_
	WHEN LEN(@INPUT_) > LEN(@stamp) THEN LEFT(@INPUT_, LEN(@stamp))
	ELSE CONCAT(RIGHT(@stamp, LEN(@stamp)-LEN(@INPUT_)), @INPUT_)
	END
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN @result
END
GO


-- ----------------------------
-- procedure structure for sp_procc_import_txt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_procc_import_txt]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_procc_import_txt]
GO

CREATE PROCEDURE [dbo].[sp_procc_import_txt]
  @DB_NAME AS varchar(max) = '' ,
  @SCHEMA_NAME AS varchar(max) = '' ,
  @TARGET AS varchar(max) = '' ,
  @SOURCE AS varchar(max) = '' ,
  @DELIMITER AS varchar(max) = '|' ,
  @ROW_TERMINATOR AS varchar(max) = '\n',
  @LAST_ROW AS varchar(max) = '0',
	@NO_HEADER AS VARCHAR(max) = 'NO'
AS
BEGIN
	DECLARE
		@LEN INTEGER = 0
		,@POINTER INTEGER = 1
		,@SQL_QUERY VARCHAR(MAX)
		,@COLUMNS VARCHAR(MAX)
		,@OVERFLOW VARCHAR(MAX);
	DECLARE
		@COLUMN_ TABLE ([DATA] VARCHAR(MAX));
	DECLARE
		@TARGET_ TABLE ([DATA] VARCHAR(MAX));
		
	SET @DB_NAME = COALESCE(NULLIF(@DB_NAME, ''), DB_NAME(0));

	CREATE TABLE #IMPORT_READER (
		[f1] varchar(max)
	);
	
	WHILE @POINTER <= 300
	BEGIN
		SET @POINTER = @POINTER + 1;
		SET @SQL_QUERY = CONCAT(
			'ALTER TABLE #IMPORT_READER ADD [F', @POINTER, '] VARCHAR(MAX) NULL;'
		);
		
		BEGIN TRY	
			EXEC(@sql_query);
		END TRY
		BEGIN CATCH
			PRINT CONCAT('ERROR ADD COLUMN [F', @POINTER, '] TO #IMPORT_READER: ', ERROR_MESSAGE());
		END CATCH
		
	END
	
	SET @POINTER = 1;
	
	SET @sql_query = CONCAT(
		'BULK INSERT #IMPORT_READER
		FROM ''', @SOURCE, '''
		WITH
		(
			FIELDTERMINATOR = ''', @DELIMITER, ''',
			ROWTERMINATOR = ''', @ROW_TERMINATOR, ''',
			CHECK_CONSTRAINTS,
			KEEPIDENTITY,
			KEEPNULLS,
			TABLOCK,
			FIRSTROW = 0,
			LASTROW = 1
		);');
	
	BEGIN TRY	
		EXEC(@sql_query);
	END TRY
	BEGIN CATCH
		PRINT CONCAT('ERROR #IMPORT_READER: ', ERROR_MESSAGE());
	END CATCH

	CREATE TABLE #IMPORT_BULK (
		[d] varchar(max)
	);
	
	SET @sql_query = CONCAT(
		'BULK INSERT #IMPORT_BULK
		FROM ''', @SOURCE, '''
		WITH
		(
			ROWTERMINATOR = ''', @ROW_TERMINATOR, ''',
			CHECK_CONSTRAINTS,
			KEEPIDENTITY,
			KEEPNULLS,
			TABLOCK,
			FIRSTROW = 2,
			LASTROW = 2);');
	
	BEGIN TRY	
		EXEC(@sql_query);
	END TRY
	BEGIN CATCH
		PRINT CONCAT('ERROR #IMPORT_BULK: ', ERROR_MESSAGE());
	END CATCH
	
	SET @LEN = (SELECT MAX(LEN([d])) [LEN] FROM #IMPORT_BULK);
	SET @OVERFLOW = (SELECT TOP 1 LEFT([d], COALESCE(NULLIF(CHARINDEX(@DELIMITER, [d]), 0), 1) - 1) [OVERFLOW] FROM #IMPORT_BULK);
	SET @LEN = ( @LEN - (SELECT MAX(LEN(REPLACE([d], @DELIMITER, ''))) [LEN] FROM #IMPORT_BULK) ) / LEN(REPLACE(@DELIMITER, ' ', '|')) + 1;
	
	WHILE @POINTER <= @LEN
	BEGIN
		IF @NO_HEADER != 'YES'
		BEGIN
			SET @SQL_QUERY = CONCAT(
				'SELECT TOP 1 [f', @POINTER,'] FROM #IMPORT_READER'
			);
			
			BEGIN TRY
				DELETE @COLUMN_;
				INSERT INTO @COLUMN_ EXEC(@SQL_QUERY);
				
				IF @POINTER = @LEN
				BEGIN
					UPDATE @COLUMN_ SET [DATA] = REPLACE([DATA], @OVERFLOW, '');
					UPDATE @COLUMN_ SET [DATA] = REPLACE([DATA], '
', '');
					UPDATE @COLUMN_ SET [DATA] = NULL WHERE [DATA] = '';
				END
				
				SET @COLUMNS = CONCAT(@COLUMNS, CASE WHEN @COLUMNS IS NOT NULL THEN ',' END, '[', COALESCE(NULLIF((SELECT TOP 1 * FROM @COLUMN_), '
'), CONCAT('f', @POINTER)), '] VARCHAR(MAX)');
				END TRY
				BEGIN CATCH
					PRINT CONCAT('ERROR UPDATE COLUMNS: ', ERROR_MESSAGE());
				END CATCH
			END ELSE
			BEGIN
				SET @COLUMNS = CONCAT(@COLUMNS, CASE WHEN @COLUMNS IS NOT NULL THEN ',' END, '[','f', @POINTER, '] VARCHAR(MAX)');
			END
			
			
		
		SET @POINTER = @POINTER + 1;
	END
	
	SET @SQL_QUERY = 'DROP TABLE [COLUMN.DATA];';
	BEGIN TRY
		EXEC(@SQL_QUERY);
	END TRY
	BEGIN CATCH
	END CATCH
	
	SET @SQL_QUERY = CONCAT(
		'CREATE TABLE [COLUMN.DATA]
			(
				', @COLUMNS, '
			);
		'
	);
	
	BEGIN TRY
		EXEC(@SQL_QUERY);
	END TRY
	BEGIN CATCH
		PRINT CONCAT('ERROR CREATE TABLE DATA: ', ERROR_MESSAGE());
		PRINT @COLUMNS;
	END CATCH
	
	SET @sql_query = CONCAT(
		'BULK INSERT [COLUMN.DATA]
		FROM ''', @SOURCE, '''
		WITH
		(
			FIELDTERMINATOR = ''', @DELIMITER, ''',
			ROWTERMINATOR = ''', @ROW_TERMINATOR, ''',
			CHECK_CONSTRAINTS,
			KEEPIDENTITY,
			KEEPNULLS,
			TABLOCK,
			FIRSTROW = 2
			',
				CASE
					WHEN NULLIF(COALESCE(TRY_CAST(@LAST_ROW AS INTEGER), 0) + 1, 1) IS NOT NULL THEN CONCAT(', LASTROW = ', COALESCE(TRY_CAST(@LAST_ROW AS INTEGER), 0) + 1) END
			, ');');
	
	BEGIN TRY
		EXEC(@SQL_QUERY);
	END TRY
	BEGIN CATCH
		PRINT CONCAT('ERROR BULK INSERT TO DATA: ', ERROR_MESSAGE());
	END CATCH
	
	SET @SQL_QUERY = CONCAT(
		'SELECT TOP 1
				CONCAT(''[', @DB_NAME, '].[SCHEMA_NAME(SCHEMA_ID)].'', name) AS NAME
			FROM [', @DB_NAME, '].[sys].[OBJECTS]
			WHERE SCHEMA_NAME(SCHEMA_ID) = ''', @SCHEMA_NAME, '''
			AND TYPE = ''USER''
		'
	);
	
	BEGIN TRY
		INSERT INTO @TARGET_
		EXEC(@SQL_QUERY);
	END TRY
	BEGIN CATCH
		PRINT CONCAT('TARGET [', @DB_NAME, '].[', @SCHEMA_NAME, '].[', @TARGET,  '] NOT FOUND : ', ERROR_MESSAGE());
	END CATCH
	
	IF NOT EXISTS(SELECT * FROM @TARGET_)
	BEGIN
		INSERT INTO @TARGET_ VALUES (CONCAT('[', @DB_NAME,'].[', @SCHEMA_NAME, '].[', @TARGET, ']'));
	END
	
	SET @SQL_QUERY = CONCAT(
		'DROP TABLE ', (SELECT TOP 1 [DATA] FROM @TARGET_), ';'
	);
	
	BEGIN TRY
		EXEC(@SQL_QUERY);
	END TRY
	BEGIN CATCH
		PRINT @SQL_QUERY;
		PRINT CONCAT('ERROR DROP TABLE [', @DB_NAME, '].[', @SCHEMA_NAME, '].[', @TARGET,  '] : ', ERROR_MESSAGE());
	END CATCH
	
	SET @SQL_QUERY = CONCAT(
		'SELECT * INTO ', (SELECT TOP 1 [DATA] FROM @TARGET_), ' FROM [COLUMN.DATA];'
	);
	
	BEGIN TRY
		EXEC(@SQL_QUERY);
	END TRY
	BEGIN CATCH
		PRINT @SQL_QUERY;
		PRINT CONCAT('ERROR INSERT INTO [', @DB_NAME, '].[', @SCHEMA_NAME, '].[', @TARGET,  '] : ', ERROR_MESSAGE());
	END CATCH
END
GO


-- ----------------------------
-- function structure for fx_adjustment_divisi_bsi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_divisi_bsi]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_divisi_bsi]
GO

CREATE FUNCTION [dbo].[fx_adjustment_divisi_bsi]
( @DIVISI AS varchar(max) 
)
RETURNS varchar(max)
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN CASE
		WHEN @DIVISI IN ('Konsumer', 'Consumer', 'CFG', 'CFG-1', 'CFG-2', 'CHG-C', 'CHG-H', 'HUG', 'CF1', 'CF2', 'CND') THEN 'KONSUMER'
		WHEN @DIVISI IN ('Mikro', 'Micro', 'MBG', 'MHD') THEN 'MIKRO'
		WHEN @DIVISI IN ('Pawning', 'Gadai', 'PWG') THEN 'PAWNING'
		WHEN @DIVISI IN ('SME', 'BBG', 'BBG B to B', 'BBG B to C', 'BBG-1', 'BBG-2', 'SBD', 'BB1G', 'BB2G', 'BBG_B_TO_B', 'BBG_B_TO_C') THEN 'SME'
		WHEN @DIVISI IN ('KORPORASI', 'Corporate', 'Corporate 1', 'Corporate 2', 'CB1G', 'CB2G', 'CB3G', 'EDA_CB3G', 'CRD') THEN 'KORPORASI'
		WHEN @DIVISI IN ('CMG', 'Komersial', 'Commercial', 'Komersil', 'CMG-K', 'CMG-M', 'CMD') THEN 'KOMERSIL'
		WHEN @DIVISI IN ('Hasanah Card', 'CBG', 'HC') THEN 'HASANAH CARD'
	ELSE @DIVISI
	END
END
GO


-- ----------------------------
-- function structure for fx_adjustment_flagMature
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_flagMature]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_flagMature]
GO

CREATE FUNCTION [dbo].[fx_adjustment_flagMature]
( @TGL_JT_TEMPO AS date ,
  @TGL_CURRENT AS date 
)
RETURNS nvarchar(max)
AS
BEGIN
	RETURN CASE
		WHEN @TGL_JT_TEMPO IS NOT NULL
		THEN
			CASE 
				WHEN @TGL_JT_TEMPO IS NULL THEN 'Not Mature'
				WHEN @TGL_JT_TEMPO > DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,@TGL_CURRENT)+4,0)) THEN 'Not Mature'
				WHEN @TGL_JT_TEMPO > DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,@TGL_CURRENT)+1,0)) THEN 'Mature dalam 3 Bulan Kedepan'
				ELSE 'Mature'
			END
	END
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN NULL
END
GO


-- ----------------------------
-- function structure for fx_adjustment_flag_aging
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_flag_aging]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_flag_aging]
GO

CREATE FUNCTION [dbo].[fx_adjustment_flag_aging]
( @M_1 AS varchar(MAX) = NULL ,
  @M_2 AS varchar(MAX) = NULL ,
  @M_3 AS varchar(MAX) = NULL ,
  @M_4 AS varchar(MAX) = NULL ,
  @M_5 AS varchar(MAX) = NULL ,
  @M_6 AS varchar(MAX) = NULL 
)
RETURNS varchar(MAX)
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
	DECLARE @result varchar(max) = NULL;

	SET @result =
		CASE
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN @M_6 IS NULL THEN 1 ELSE 0 END)
						,(CASE WHEN @M_5 IS NULL THEN 1 ELSE 0 END)
						,(CASE WHEN @M_4 IS NULL THEN 1 ELSE 0 END)
						,(CASE WHEN @M_3 IS NULL THEN 1 ELSE 0 END)
						,(CASE WHEN @M_2 IS NULL THEN 1 ELSE 0 END)
						,(CASE WHEN @M_1 IS NULL THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) >= 4
				THEN 'New Booking'
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') > COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') > COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') > COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') > COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') > COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) >= 3
				THEN 'Membaik'
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') < COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') < COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') < COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') < COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') < COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) >= 3
				THEN 'Memburuk'
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') = COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') = COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') = COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') = COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') = COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) >= 4
				THEN 'Stay'
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') > COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') > COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') > COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') > COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') > COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) >= 2
					AND (SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') < COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') < COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') < COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') < COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') < COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) >= 2
				THEN 'Fluktuatif'
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') < COALESCE(@M_5, '1') THEN -1 WHEN COALESCE(@M_6, '1') = COALESCE(@M_5, '1') THEN 0 WHEN COALESCE(@M_6, '1') > COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') < COALESCE(@M_4, '1') THEN -1 WHEN COALESCE(@M_5, '1') = COALESCE(@M_4, '1') THEN 0 WHEN COALESCE(@M_5, '1') > COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') < COALESCE(@M_3, '1') THEN -1 WHEN COALESCE(@M_4, '1') = COALESCE(@M_3, '1') THEN 0 WHEN COALESCE(@M_4, '1') > COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') < COALESCE(@M_2, '1') THEN -1 WHEN COALESCE(@M_3, '1') = COALESCE(@M_2, '1') THEN 0 WHEN COALESCE(@M_3, '1') > COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') < COALESCE(@M_1, '1') THEN -1 WHEN COALESCE(@M_2, '1') = COALESCE(@M_1, '1') THEN 0 WHEN COALESCE(@M_2, '1') > COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) > 0
				THEN 'Membaik'
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') < COALESCE(@M_5, '1') THEN -1 WHEN COALESCE(@M_6, '1') = COALESCE(@M_5, '1') THEN 0 WHEN COALESCE(@M_6, '1') > COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') < COALESCE(@M_4, '1') THEN -1 WHEN COALESCE(@M_5, '1') = COALESCE(@M_4, '1') THEN 0 WHEN COALESCE(@M_5, '1') > COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') < COALESCE(@M_3, '1') THEN -1 WHEN COALESCE(@M_4, '1') = COALESCE(@M_3, '1') THEN 0 WHEN COALESCE(@M_4, '1') > COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') < COALESCE(@M_2, '1') THEN -1 WHEN COALESCE(@M_3, '1') = COALESCE(@M_2, '1') THEN 0 WHEN COALESCE(@M_3, '1') > COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') < COALESCE(@M_1, '1') THEN -1 WHEN COALESCE(@M_2, '1') = COALESCE(@M_1, '1') THEN 0 WHEN COALESCE(@M_2, '1') > COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) = 0
				THEN 'Stay'
				WHEN
					(SELECT SUM(POINTER) FROM(VALUES
						(CASE WHEN COALESCE(@M_6, '1') < COALESCE(@M_5, '1') THEN -1 WHEN COALESCE(@M_6, '1') = COALESCE(@M_5, '1') THEN 0 WHEN COALESCE(@M_6, '1') > COALESCE(@M_5, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_5, '1') < COALESCE(@M_4, '1') THEN -1 WHEN COALESCE(@M_5, '1') = COALESCE(@M_4, '1') THEN 0 WHEN COALESCE(@M_5, '1') > COALESCE(@M_4, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_4, '1') < COALESCE(@M_3, '1') THEN -1 WHEN COALESCE(@M_4, '1') = COALESCE(@M_3, '1') THEN 0 WHEN COALESCE(@M_4, '1') > COALESCE(@M_3, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_3, '1') < COALESCE(@M_2, '1') THEN -1 WHEN COALESCE(@M_3, '1') = COALESCE(@M_2, '1') THEN 0 WHEN COALESCE(@M_3, '1') > COALESCE(@M_2, '1') THEN 1 ELSE 0 END)
						,(CASE WHEN COALESCE(@M_2, '1') < COALESCE(@M_1, '1') THEN -1 WHEN COALESCE(@M_2, '1') = COALESCE(@M_1, '1') THEN 0 WHEN COALESCE(@M_2, '1') > COALESCE(@M_1, '1') THEN 1 ELSE 0 END)
					)[TEMP_TB](POINTER)) < 0
				THEN 'Memburuk'
			ELSE NULL
		END;

	RETURN @result;
	
END
GO


-- ----------------------------
-- function structure for fx_adjustment_mutasi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_mutasi]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_mutasi]
GO

CREATE FUNCTION [dbo].[fx_adjustment_mutasi]
( @Kol_Last AS nvarchar(MAX) ,
  @Kol_Current AS nvarchar(MAX) 
)
RETURNS nvarchar(MAX)
AS
BEGIN
	RETURN
		CASE
		WHEN @Kol_Current IN ('Suspect', 'WO', 'Lunas') THEN @Kol_Current
		WHEN @Kol_Last IN ('1') THEN
			CASE
				WHEN @Kol_Current IN ('2', '2A', '2B', '2C', '3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5') THEN 'Downgrade'
				ELSE 'Stay'
			END
		WHEN @Kol_Last IN ('2', '2A', '2B', '2C') THEN
			CASE
				WHEN @Kol_Current IN ('3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5') THEN 'Downgrade'
				WHEN @Kol_Current IN ('1') THEN 'Upgrade'
				ELSE 'Stay'
			END
		WHEN @Kol_Last IN ('3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5') THEN
			CASE
				WHEN @Kol_Current IN ('1', '2', '2A', '2B', '2C') THEN 'Upgrade'
				ELSE 'Stay'
			END
		WHEN @Kol_Current IN ('2', '2A', '2B', '2C', '3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5') THEN 'Downgrade'
		ELSE 'Cair Baru' END
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN NULL
END
GO


-- ----------------------------
-- function structure for fx_adjustment_jenispiutangpembiayaan_bsm
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_jenispiutangpembiayaan_bsm]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_jenispiutangpembiayaan_bsm]
GO

CREATE FUNCTION [dbo].[fx_adjustment_jenispiutangpembiayaan_bsm]
( @DIVISI AS varchar(MAX) ,
  @LOANTYPE AS varchar(MAX) ,
  @JENISPIUTANGPEMBIAYAAN AS varchar(MAX) 
)
RETURNS varchar(MAX)
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN COALESCE(
CASE
	WHEN @DIVISI NOT IN ('CB1G', 'CB2G', 'CMG') THEN
		CASE
			WHEN LEFT(@LOANTYPE, 3) = 'IJR' THEN 'Ijarah'
			WHEN LEFT(@LOANTYPE, 3) = 'IMB' THEN 'Ijarah'
			WHEN LEFT(@LOANTYPE, 3) = 'IST' THEN 'Istishna'
			WHEN LEFT(@LOANTYPE, 3) = 'MQN' THEN 'Musyarakah'
			WHEN LEFT(@LOANTYPE, 3) = 'MUD' THEN 'Mudharabah'
			WHEN LEFT(@LOANTYPE, 3) = 'MUR' THEN 'Murabahah'
			WHEN LEFT(@LOANTYPE, 3) = 'MUS' THEN 'Musyarakah'
			WHEN LEFT(@LOANTYPE, 3) = 'MUT' THEN 'Musyarakah'
			WHEN LEFT(@LOANTYPE, 3) = 'PDB' THEN 'Musyarakah'
			WHEN LEFT(@LOANTYPE, 3) = 'QRD' THEN 'Qard'
			WHEN LEFT(@LOANTYPE, 3) = 'QRU' THEN 'Qard'
			WHEN LEFT(@LOANTYPE, 3) = 'QSF' THEN 'Qard'
			WHEN LEFT(@LOANTYPE, 3) = 'RHN' THEN 'Rahn'
		END
END
,@JENISPIUTANGPEMBIAYAAN
)
END
GO


-- ----------------------------
-- function structure for fx_adjustment_kelolaan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_kelolaan]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_kelolaan]
GO

CREATE FUNCTION [dbo].[fx_adjustment_kelolaan]
( @KolCIF AS nvarchar(MAX) ,
  @Divisi AS nvarchar(MAX) 
)
RETURNS nvarchar(MAX)
AS
BEGIN
	RETURN CASE
		WHEN @Divisi IN ('CFG', 'CFG-1', 'CFG-2', 'Konsumer', 'Consumer') AND @KolCIF IN ('2', '2A', '2B', '2C', '3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5', 'WO') THEN 'RCG'
		WHEN @Divisi IN ('MBG', 'Mikro', 'Micro') AND @KolCIF IN ('3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5', 'WO') THEN 'RCG'
		WHEN @Divisi IN ('BBG', 'BBG-1', 'BBG-2', 'SME') AND @KolCIF IN ('3', '3A', '3B', '3C', '4', '4A', '4B', '4C', '5', 'WO') THEN 'RCG'
		WHEN @Divisi IN ('PWG', 'Pawning') AND @KolCIF IN ('WO') THEN 'RCG'
		WHEN @Divisi IN ('Hasanah Card') THEN 'RCG'
	ELSE 'NON RCG'
	END
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN NULL
END
GO


-- ----------------------------
-- function structure for fx_calc_payment_basil
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_calc_payment_basil]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_calc_payment_basil]
GO

CREATE FUNCTION [dbo].[fx_calc_payment_basil]
( @kol_current AS nvarchar(MAX) = NULL ,
  @kol_final AS nvarchar(MAX) = NULL ,
  @os_before AS float = 0 ,
  @os_current AS float = 0 
)
RETURNS float
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN
		CASE
--			WHEN @kol_final IN ('Suspect', 'WO', 'Lunas') AND @kol_current IS NULL THEN 0
			WHEN @kol_current IS NULL THEN 0
			ELSE dbo.fx_common_abs_substraction(COALESCE(@os_current, 0), COALESCE(@os_before, 0))
		END
END
GO


-- ----------------------------
-- function structure for fx_BNIS_convert_string_to_date
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_BNIS_convert_string_to_date]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_BNIS_convert_string_to_date]
GO

CREATE FUNCTION [dbo].[fx_BNIS_convert_string_to_date]
( @strings AS varchar(max)
)
RETURNS date
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
	IF(TRY_CAST(@strings AS INTEGER) IS NULL OR LEN(@strings) != 7)
	BEGIN
		RETURN NULL
	END
	IF(TRY_CAST(LEFT(@strings, 4) AS INTEGER) < 1900)
	BEGIN
		RETURN DATEADD(DAY, TRY_CAST(RIGHT(@strings, 3) AS INTEGER) - 1, CONCAT(TRY_CAST(LEFT(@strings, 4) AS INTEGER)+1900, '-01-01'))
	END
		RETURN DATEADD(DAY, TRY_CAST(RIGHT(@strings, 3) AS INTEGER) - 1, CONCAT(LEFT(@strings, 4), '-01-01'))
END
GO


-- ----------------------------
-- function structure for fx_adjustment_kol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_kol]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_kol]
GO

CREATE FUNCTION [dbo].[fx_adjustment_kol]
( @kolLoan AS nvarchar(MAX) ,
  @DPD AS int = 0 ,
  @JENISPIUTANGPEMBIAYAAN AS nvarchar(MAX) = '' ,
	@OVERDUE_DAYS AS DATE ,
	@TANGGAL_DATA AS DATE ,
	@NOLOAN AS nvarchar(MAX) = NULL , 
	@RBH_IN AS varchar(MAX) = NULL ,
	@PBH_IN AS varchar(MAX) = NULL
)
RETURNS nvarchar(MAX)
--WITH RETURNS NULL ON NULL INPUT 
AS
BEGIN

	DECLARE @KOL_DPD VARCHAR(max), @KOL_BASIL_50 VARCHAR(MAX), @KOL_BASIL_80 VARCHAR(MAX);
	IF(@kolLoan IN (
-- 		'1', '2A', '2B', '2C', '3A', '3B', '3C', '4A', '4B', '4C', '5', 
		'Lunas', 'Suspect', 'WO'))
	BEGIN
		RETURN @kolLoan
	END

	IF(LEFT(@kolLoan, 1) IN ('1', '5'))
	BEGIN
		RETURN LEFT(@kolLoan, 1)
	END

	SET @OVERDUE_DAYS = COALESCE(@OVERDUE_DAYS, @TANGGAL_DATA);
	SET @TANGGAL_DATA = COALESCE(@TANGGAL_DATA, @OVERDUE_DAYS);
	DECLARE @RBH DECIMAL(20, 2) = TRY_CAST(@RBH_IN AS DECIMAL(20, 2));
	DECLARE @PBH DECIMAL(20, 2) = TRY_CAST(@PBH_IN AS DECIMAL(20, 2));

	DECLARE @PERIODE INTEGER = 0;
	DECLARE @ASUMSI_KOL VARCHAR(2) = '';

	SET @KOL_DPD =
		CASE
			WHEN LEFT(@kolLoan, 1) = '2'
			THEN CASE
				WHEN @JENISPIUTANGPEMBIAYAAN IN ('Qardh', 'Musyarakah', 'Mudharabah')
				THEN CASE
					WHEN @OVERDUE_DAYS <= @TANGGAL_DATA
					THEN CASE
						WHEN @DPD < 11 THEN '2A'
						WHEN @DPD < 21 THEN '2B'
						WHEN @DPD IS NULL THEN '2A'
						ELSE '2C'
					END
					ELSE CASE
						WHEN @DPD < 31 THEN '2A'
						WHEN @DPD < 61 THEN '2B'
						WHEN @DPD IS NULL THEN '2A'
						ELSE '2C'
					END
				END
				ELSE CASE
					WHEN @DPD < 31 THEN '2A'
					WHEN @DPD < 61 THEN '2B'
					WHEN @DPD IS NULL THEN '2A'
					ELSE '2C'
				END
			END

			WHEN LEFT(@kolLoan, 1) = '3'
			THEN CASE
				WHEN @JENISPIUTANGPEMBIAYAAN IN ('Qardh', 'Musyarakah', 'Mudharabah')
				THEN CASE
					WHEN @OVERDUE_DAYS <= @TANGGAL_DATA
					THEN CASE
						WHEN @DPD < 41 THEN '3A'
						WHEN @DPD < 51 THEN '3B'
						WHEN @DPD IS NULL THEN '3A'
						ELSE '3C'
					END
					ELSE CASE
						WHEN @DPD < 101 THEN '3A'
						WHEN @DPD < 111 THEN '3B'
						WHEN @DPD IS NULL THEN '3A'
						ELSE '3C'
					END
				END
				ELSE CASE
					WHEN @DPD < 121 THEN '3A'
					WHEN @DPD < 151 THEN '3B'
					WHEN @DPD IS NULL THEN '3A'
					ELSE '3C'
				END
			END
			
			WHEN LEFT(@kolLoan, 1) = '4'
			THEN CASE
				WHEN @JENISPIUTANGPEMBIAYAAN IN ('Qardh', 'Musyarakah', 'Mudharabah')
				THEN CASE
					WHEN @OVERDUE_DAYS <= @TANGGAL_DATA
					THEN CASE
						WHEN @DPD < 71 THEN '4A'
						WHEN @DPD < 81 THEN '4B'
						WHEN @DPD IS NULL THEN '4A'
						ELSE '4C'
					END
					ELSE CASE
						WHEN @DPD < 141 THEN '4A'
						WHEN @DPD < 161 THEN '4B'
						WHEN @DPD IS NULL THEN '4A'
						ELSE '4C'
					END
				END
				ELSE CASE
					WHEN @DPD < 211 THEN '4A'
					WHEN @DPD < 241 THEN '4B'
					WHEN @DPD IS NULL THEN '4A'
					ELSE '4C'
				END
			END
			ELSE @kolLoan
		END;

	IF(CASE WHEN NULLIF(@RBH, 0.00) IS NULL AND NULLIF(@PBH, 0.00) IS NULL THEN 1.00 ELSE @RBH END /COALESCE(NULLIF(@PBH, 0.00), NULLIF(@RBH, 0.00), 1.00) <= 0.5)
	BEGIN
		SET @PERIODE =
			COALESCE((
				SELECT
					CASE
						WHEN [RBH_PBH_M-9] <= 0.5
							AND [RBH_PBH_M-8] <= 0.5
							AND [RBH_PBH_M-7] <= 0.5
							AND [RBH_PBH_M-6] <= 0.5
							AND [RBH_PBH_M-5] <= 0.5
							AND [RBH_PBH_M-4] <= 0.5
							AND [RBH_PBH_M-3] <= 0.5
							AND [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 9
						WHEN [RBH_PBH_M-8] <= 0.5
							AND [RBH_PBH_M-7] <= 0.5
							AND [RBH_PBH_M-6] <= 0.5
							AND [RBH_PBH_M-5] <= 0.5
							AND [RBH_PBH_M-4] <= 0.5
							AND [RBH_PBH_M-3] <= 0.5
							AND [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 8
						WHEN [RBH_PBH_M-7] <= 0.5
							AND [RBH_PBH_M-6] <= 0.5
							AND [RBH_PBH_M-5] <= 0.5
							AND [RBH_PBH_M-4] <= 0.5
							AND [RBH_PBH_M-3] <= 0.5
							AND [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 7
						WHEN [RBH_PBH_M-6] <= 0.5
							AND [RBH_PBH_M-5] <= 0.5
							AND [RBH_PBH_M-4] <= 0.5
							AND [RBH_PBH_M-3] <= 0.5
							AND [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 6
						WHEN [RBH_PBH_M-5] <= 0.5
							AND [RBH_PBH_M-4] <= 0.5
							AND [RBH_PBH_M-3] <= 0.5
							AND [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 5
						WHEN [RBH_PBH_M-4] <= 0.5
							AND [RBH_PBH_M-3] <= 0.5
							AND [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 4
						WHEN [RBH_PBH_M-3] <= 0.5
							AND [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 3
						WHEN [RBH_PBH_M-2] <= 0.5
							AND [RBH_PBH_M-1] <= 0.5 THEN 2
						WHEN [RBH_PBH_M-1] <= 0.5 THEN 1
						ELSE 0
					END + 
					CASE WHEN [PBH_LAST_MONTH] != @PBH THEN 1 ELSE 0 END AS NUM
				FROM [mapping].[AGING.RBH_PBH]
				WHERE NOLOAN IN (@NOLOAN)
				AND PERIODE_DATA = TRY_CAST(EOMONTH(@TANGGAL_DATA) AS DATE)
			), 1);
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD > 90 AND @PERIODE > 6 AND @OVERDUE_DAYS <= @TANGGAL_DATA)
				OR (@DPD > 180 AND @PERIODE > 6)
				OR (@PERIODE > 6)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '5';
		END
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 61 AND 90 AND @PERIODE BETWEEN 4 AND 6 AND @OVERDUE_DAYS <= @TANGGAL_DATA)
				OR (@DPD BETWEEN 121 AND 180 AND @PERIODE BETWEEN 4 AND 6)
				OR (@PERIODE = 6)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '4C';
		END
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 121 AND 150 AND @PERIODE = 5)
				OR (@PERIODE = 5)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '4B';
		END
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 121 AND 150 AND @PERIODE = 4)
				OR (@PERIODE = 4)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '4A';
		END
			
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 31 AND 60 AND @PERIODE BETWEEN 1 AND 3 AND @OVERDUE_DAYS <= @TANGGAL_DATA)
				OR (@DPD BETWEEN 91 AND 120 AND @PERIODE = 3)
				OR (@PERIODE = 3)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '3C';
		END
			
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 91 AND 120 AND @PERIODE = 2)
				OR (@PERIODE = 2)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '3B';
		END

		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 91 AND 120 AND @PERIODE = 1)
				OR (@PERIODE = 1)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '3A';
		END

		SET @ASUMSI_KOL = COALESCE(@ASUMSI_KOL, @kolLoan);

		SET @KOL_BASIL_50 = 
			CASE
				WHEN LEFT(@kolLoan, 1) > LEFT(@ASUMSI_KOL, 1) THEN CONCAT(LEFT(@kolLoan, 1), 'A')
				WHEN LEFT(@kolLoan, 1) < LEFT(@ASUMSI_KOL, 1) THEN CONCAT(LEFT(@kolLoan, 1), 'C')
				WHEN LEFT(@kolLoan, 1) = LEFT(@ASUMSI_KOL, 1) THEN @ASUMSI_KOL
				--WHEN LEN(@kolLoan) = 1 THEN CONCAT(LEFT(@kolLoan, 1), 'A')
				ELSE @kolLoan
			END;
	END

	IF(CASE WHEN NULLIF(@RBH, 0.00) IS NULL AND NULLIF(@PBH, 0.00) IS NULL THEN 1.00 ELSE @RBH END /COALESCE(NULLIF(@PBH, 0.00), NULLIF(@RBH, 0.00), 1.00) <= 0.8)
	BEGIN
		SET @PERIODE =
			COALESCE((
				SELECT
					CASE
						WHEN [RBH_PBH_M-9] < 0.8
							AND [RBH_PBH_M-8] < 0.8
							AND [RBH_PBH_M-7] < 0.8
							AND [RBH_PBH_M-6] < 0.8
							AND [RBH_PBH_M-5] < 0.8
							AND [RBH_PBH_M-4] < 0.8
							AND [RBH_PBH_M-3] < 0.8
							AND [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 9
						WHEN [RBH_PBH_M-8] < 0.8
							AND [RBH_PBH_M-7] < 0.8
							AND [RBH_PBH_M-6] < 0.8
							AND [RBH_PBH_M-5] < 0.8
							AND [RBH_PBH_M-4] < 0.8
							AND [RBH_PBH_M-3] < 0.8
							AND [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 8
						WHEN [RBH_PBH_M-7] < 0.8
							AND [RBH_PBH_M-6] < 0.8
							AND [RBH_PBH_M-5] < 0.8
							AND [RBH_PBH_M-4] < 0.8
							AND [RBH_PBH_M-3] < 0.8
							AND [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 7
						WHEN [RBH_PBH_M-6] < 0.8
							AND [RBH_PBH_M-5] < 0.8
							AND [RBH_PBH_M-4] < 0.8
							AND [RBH_PBH_M-3] < 0.8
							AND [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 6
						WHEN [RBH_PBH_M-5] < 0.8
							AND [RBH_PBH_M-4] < 0.8
							AND [RBH_PBH_M-3] < 0.8
							AND [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 5
						WHEN [RBH_PBH_M-4] < 0.8
							AND [RBH_PBH_M-3] < 0.8
							AND [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 4
						WHEN [RBH_PBH_M-3] < 0.8
							AND [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 3
						WHEN [RBH_PBH_M-2] < 0.8
							AND [RBH_PBH_M-1] < 0.8 THEN 2
						WHEN [RBH_PBH_M-1] < 0.8 THEN 1
						ELSE 0
					END + 
					CASE WHEN [PBH_LAST_MONTH] != @PBH THEN 1 ELSE 0 END AS NUM
				FROM [mapping].[AGING.RBH_PBH]
				WHERE NOLOAN IN (@NOLOAN)
				AND PERIODE_DATA = TRY_CAST(EOMONTH(@TANGGAL_DATA) AS DATE)
			), 1);
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD > 90 AND @PERIODE > 9 AND @OVERDUE_DAYS <= @TANGGAL_DATA)
				OR (@DPD > 180 AND @PERIODE > 9)
				OR (@PERIODE > 9)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '5';
		END
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 61 AND 90 AND @PERIODE BETWEEN 7 AND 9 AND @OVERDUE_DAYS <= @TANGGAL_DATA)
				OR (@DPD BETWEEN 121 AND 180 AND @PERIODE BETWEEN 7 AND 9)
				OR (@PERIODE = 9)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '4C';
		END
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 121 AND 150 AND @PERIODE = 8)
				OR (@PERIODE = 8)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '4B';
		END
		
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 121 AND 150 AND @PERIODE = 7)
				OR (@PERIODE = 7)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '4A';
		END
			
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 31 AND 60 AND @PERIODE BETWEEN 2 AND 6 AND @OVERDUE_DAYS <= @TANGGAL_DATA)
				OR (@DPD BETWEEN 91 AND 120 AND @PERIODE BETWEEN 5 AND 6)
				OR (@PERIODE BETWEEN 5 AND 6)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '3C';
		END
			
		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 91 AND 120 AND @PERIODE = 4)
				OR (@PERIODE BETWEEN 3 AND 4)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '3B';
		END

		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 91 AND 120 AND @PERIODE BETWEEN 2 AND 3)
				OR (@PERIODE = 2)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '3A';
		END

		IF(
			NULLIF(@ASUMSI_KOL, '') IS NULL
			AND
			(
				(@DPD BETWEEN 1 AND 30 AND @PERIODE = 1 AND @OVERDUE_DAYS <= @TANGGAL_DATA)
				OR (@DPD BETWEEN 1 AND 90 AND @PERIODE = 1)
				OR (@PERIODE = 1)
			)
		)
		BEGIN
			SET @ASUMSI_KOL = '2C';
		END

		SET @ASUMSI_KOL = COALESCE(@ASUMSI_KOL, @kolLoan);

		SET @KOL_BASIL_80 =
			CASE
				WHEN LEFT(@kolLoan, 1) > LEFT(@ASUMSI_KOL, 1) THEN CONCAT(LEFT(@kolLoan, 1), 'A')
				WHEN LEFT(@kolLoan, 1) < LEFT(@ASUMSI_KOL, 1) THEN CONCAT(LEFT(@kolLoan, 1), 'C')
				WHEN LEFT(@kolLoan, 1) = LEFT(@ASUMSI_KOL, 1) THEN @ASUMSI_KOL
				--WHEN LEN(@kolLoan) = 1 THEN CONCAT(LEFT(@kolLoan, 1), 'A')
				ELSE @kolLoan
			END
	END

	RETURN
	(
		SELECT
			MAX([KOL]) [KOL]
		FROM (
			VALUES
				(@KOL_DPD)
				,(@KOL_BASIL_50)
				,(@KOL_BASIL_80)
		) [TEMP]([KOL])
	)
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
END
GO


-- ----------------------------
-- procedure structure for sp_resize_varchar_columns
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_resize_varchar_columns]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_resize_varchar_columns]
GO

CREATE PROCEDURE [dbo].[sp_resize_varchar_columns]
	@schema_name varchar(max)
	,@table_name varchar(max)
AS
BEGIN
	DECLARE @sql_query nvarchar(max), @DATA_TYPE varchar(max), @COLUMN_NAME varchar(max), @LENGTH INTEGER;
	IF EXISTS (
		SELECT TOP 1
			name
		FROM [sys].[OBJECTS]
		WHERE SCHEMA_NAME(SCHEMA_ID) LIKE CONCAT('%', @SCHEMA_NAME, '%')
		AND name = @table_Name
		AND TYPE IN ('U', 'User')
	)
	BEGIN
		SET @schema_name = (
			SELECT TOP 1
				SCHEMA_NAME(SCHEMA_ID)
			FROM [sys].[OBJECTS]
			WHERE SCHEMA_NAME(SCHEMA_ID) LIKE CONCAT('%', @SCHEMA_NAME, '%')
			AND name = @table_Name
			AND TYPE IN ('U', 'User')
		);
		
		DECLARE load_cursor CURSOR FOR
			SELECT column_name FROM 
		(
			SELECT column_name
			,ordinal_position
			from information_schema.columns
			where table_name= @table_name
			AND table_schema = @schema_name
		) [TEMP]
		ORDER BY ordinal_position;

		OPEN load_cursor
		FETCH NEXT FROM load_cursor INTO @COLUMN_NAME;

		WHILE @@FETCH_STATUS = 0 
		BEGIN
			SET @DATA_TYPE = (
			SELECT
				DATA_TYPE 
			FROM INFORMATION_SCHEMA.COLUMNS
			WHERE 
					 TABLE_NAME   = @table_name AND 
					 COLUMN_NAME  = @COLUMN_NAME AND
					 TABLE_SCHEMA = @schema_name
			GROUP BY
				DATA_TYPE
			);
			
			IF @DATA_TYPE IN ('varchar', 'nvarchar')
			BEGIN
				SET @sql_query = CONCAT('SELECT @x = COALESCE(MAX(LEN([', @COLUMN_NAME, '])), 1) FROM [', @schema_name, '].[', @table_name, ']');
				EXEC sp_executesql @sql_query, N'@x INTEGER out', @LENGTH out;
				PRINT CONCAT('[', @schema_name, '].[', @table_name, '] | ', @COLUMN_NAME, ' | ', @DATA_TYPE, ' | ', @LENGTH);
				SET @sql_query = CONCAT('ALTER TABLE [', @schema_name, '].[', @table_name, '] ALTER COLUMN [', @COLUMN_NAME, '] ', @DATA_TYPE, '(', @LENGTH,')');
				EXEC sp_executesql @sql_query;
			END
			FETCH NEXT FROM load_cursor INTO @COLUMN_NAME;
		END

		CLOSE load_cursor;
		DEALLOCATE load_cursor;
		PRINT CONCAT('ADJUSTING TABLE [', @schema_name, '].[', @table_name, '] DONE!');
	END ELSE
	BEGIN
		PRINT CONCAT('TABLE [', @schema_name, '].[', @table_name, '] DOES NOT EXISTS!');
	END
END
GO


-- ----------------------------
-- function structure for fx_adjustment_tglSched
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_adjustment_tglSched]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_adjustment_tglSched]
GO

CREATE FUNCTION [dbo].[fx_adjustment_tglSched]
( @TGL_JT_TEMPO AS date ,
  @TGL_CURRENT AS date ,
  @SCHD_DT AS date 
)
RETURNS int
AS
BEGIN
	RETURN
		CASE
			WHEN (
			DATEPART(dd, CASE WHEN dbo.fx_adjustment_flagMature(@TGL_JT_TEMPO, @TGL_CURRENT) = 'Mature' THEN @TGL_JT_TEMPO
			ELSE COALESCE(@SCHD_DT, @TGL_JT_TEMPO)
			END)
			) > 1 THEN
			(
				DATEPART(
					dd
					,CASE
						WHEN dbo.fx_adjustment_flagMature(@TGL_JT_TEMPO, @TGL_CURRENT) = 'Mature' THEN @TGL_JT_TEMPO
						ELSE COALESCE(@SCHD_DT, @TGL_JT_TEMPO)
					END
				)
			)
			ELSE DATEPART(dd, @TGL_JT_TEMPO)
		END
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN NULL
END
GO


-- ----------------------------
-- function structure for fx_calc_payment_margin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_calc_payment_margin]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_calc_payment_margin]
GO

CREATE FUNCTION [dbo].[fx_calc_payment_margin]
( @kol_current AS nvarchar(MAX) = NULL ,
  @kol_final AS nvarchar(MAX) ,
  @os_before AS float = 0 ,
  @os_current AS float = 0
)
RETURNS float
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN
		CASE
--			WHEN @kol_final IN ('Suspect', 'WO', 'Lunas') AND @kol_current IS NULL THEN 0
			WHEN @kol_current IS NULL THEN 0
			ELSE dbo.fx_common_abs_substraction(COALESCE(@os_before, 0), COALESCE(@os_current, 0))
		END
END
GO


-- ----------------------------
-- function structure for fx_calc_payment_pokok
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_calc_payment_pokok]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_calc_payment_pokok]
GO

CREATE FUNCTION [dbo].[fx_calc_payment_pokok]
( @kol_current AS nvarchar(MAX) = NULL,
  @kol_final AS nvarchar(MAX) = NULL,
  @os_before AS float = 0,
  @os_current AS float = 0
)
RETURNS float
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN
		CASE
--			WHEN (@kol_final = 'Suspect' OR @kol_final = 'WO') AND @kol_current IS NULL THEN 0
			WHEN @kol_final != 'Lunas' AND @kol_current IS NULL THEN 0
			ELSE dbo.fx_common_abs_substraction(COALESCE(@os_before, 0), COALESCE(@os_current, 0))
		END
END
GO


-- ----------------------------
-- function structure for fx_cleanse_noHP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_cleanse_noHP]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_cleanse_noHP]
GO

CREATE FUNCTION [dbo].[fx_cleanse_noHP]
( @no_HP AS nvarchar(MAX) 
)
RETURNS nvarchar(MAX)
AS
BEGIN
	--RETURN Replace(@no_HP, Substring(@no_HP, PatIndex('^0*[0+]+8', @no_HP), 1), '08');
	RETURN Replace(@no_HP, '^0*[0+]+8', '08');
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
END
GO


-- ----------------------------
-- function structure for fx_common_abs_substraction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_common_abs_substraction]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_common_abs_substraction]
GO

CREATE FUNCTION [dbo].[fx_common_abs_substraction]
( @num1 AS float =0 ,
  @num2 AS float =0 
)
RETURNS float
AS
BEGIN
	RETURN
	ROUND(dbo.fx_common_zerofy((COALESCE(@num1, 0) - COALESCE(@num2, @num1, 0))), 2)
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
END
GO


-- ----------------------------
-- function structure for fx_cleanse_noloan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_cleanse_noloan]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_cleanse_noloan]
GO

CREATE FUNCTION [dbo].[fx_cleanse_noloan]
( @source AS varchar(max) ,
  @noloan AS varchar(max) 
)
RETURNS varchar(max)
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
	DECLARE @result varchar(max) = @noloan
	
	IF @source IN ('DMS', 'PDS')
	BEGIN
		IF LEN(@result) >= 16 RETURN @result;
		IF LEFT(@result, 2) IN ('AB', 'LD', 'BN', 'BR', 'PD') AND PATINDEX('%[0-9]%',LEFT(@result, 5)) = 3 SET @result = CONCAT('PD', @result);
		IF LEFT(@result, 3) IN ('DBN', 'DBR') AND PATINDEX('%[0-9]%',LEFT(@result, 5)) = 4 SET @result = CONCAT('P', @result);
	END

	IF @source IN ('MCS')
	BEGIN
		IF LEN(@result) >= 16 RETURN @result;
		IF LEFT(@result, 2) IN ('BN', 'BR', 'LD', 'PD', 'AB') AND PATINDEX('%[0-9]%',LEFT(@result, 5)) = 3 SET @result = CONCAT('PD', @result);
		IF LEFT(@result, 3) IN ('DBN', 'DBR') AND PATINDEX('%[0-9]%',LEFT(@result, 5)) = 4 SET @result = CONCAT('P', @result);
	END
	
	IF @source IN ('GF', 'Google Form')
	BEGIN
		SET @result = NEW_BSI_COLLECTION.dbo.fx_common_remove_symbols(@result);
		
		IF LEN(@result) >= 16 RETURN @result;
		IF PATINDEX('[^0-9]%',LEFT(@result, 5)) < 1 SET @result = CONCAT('PDLD', @result);
		IF LEFT(@result, 3) IN ('DBN', 'DBR') AND PATINDEX('%[0-9]%',LEFT(@result, 5)) = 4 SET @result = CONCAT('P', @result);
		IF LEFT(@result, 2) IN ('BN', 'BR', 'LD', 'PD', 'AB') AND PATINDEX('%[0-9]%',LEFT(@result, 5)) = 3 SET @result = CONCAT('PD', @result);
	END

	RETURN @result;
END
GO


-- ----------------------------
-- function structure for fx_common_zerofy
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_common_zerofy]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_common_zerofy]
GO

CREATE FUNCTION [dbo].[fx_common_zerofy]
( @NUMBER AS DECIMAL(32, 2) = 0.00
)
RETURNS DECIMAL(32, 2)
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
	IF(@NUMBER <= 0.00)
	BEGIN
		RETURN 0.00
	END
  RETURN COALESCE(@NUMBER, 0.00)
END
GO


-- ----------------------------
-- function structure for fx_common_remove_symbols
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_common_remove_symbols]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_common_remove_symbols]
GO

CREATE FUNCTION [dbo].[fx_common_remove_symbols]
( @strings AS varchar(MAX) 
)
RETURNS varchar(MAX)
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
/*
	DECLARE @sets varchar(MAX) = ''',.?<>:"[]{}\|!@#$%^&*)-_+=`~ 	';
	DECLARE @str varchar(MAX) = '';
	DECLARE @result varchar(MAX) = @strings;
	WHILE LEFT(@result, 1) != ''
	BEGIN
		SET @str = LEFT(@sets, 1);
    SET @sets = REPLACE(@sets, @str, '');
    SET @result = REPLACE(@result, @str, '');
    SET @result = REPLACE(@result, ' ', '');
    SET @result = REPLACE(@result, '	', '');
	END
*/


	DECLARE @tabs TABLE (VAL varchar(1));
	INSERT INTO @tabs VALUES ('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J'); 
	INSERT INTO @tabs VALUES ('K'), ('L'), ('M'), ('N'), ('O'), ('P'), ('Q'), ('R'), ('S'), ('T'); 
	INSERT INTO @tabs VALUES ('U'), ('V'), ('W'), ('X'), ('Y'), ('Z');
 
	INSERT INTO @tabs VALUES ('0'), ('1'), ('2'), ('3'), ('4'), ('5'), ('6'), ('7'), ('8'), ('9'); 

	DECLARE @result varchar(MAX) = '';
	DECLARE @str varchar(MAX) = '';
	DECLARE @ramps varchar(MAX) = @strings;
	SET @ramps = REPLACE(@ramps, ' ', '');
	SET @ramps = REPLACE(@ramps, '	', '');
	
	WHILE LEFT(@ramps, 1) != ''
	BEGIN
		SET @str = LEFT(@ramps, 1);
		SET @result = CONCAT(@result, CASE WHEN @str IN (SELECT * FROM @tabs) THEN @str END);
    SET @ramps = RIGHT(@ramps, LEN(@ramps)-1);
	END

  RETURN @result
END
GO


-- ----------------------------
-- function structure for fx_common_convert_string_to_date
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_common_convert_string_to_date]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_common_convert_string_to_date]
GO

CREATE FUNCTION [dbo].[fx_common_convert_string_to_date]
( @strings AS varchar(max) 
)
RETURNS date
AS
BEGIN
  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'

	RETURN
		CASE
			WHEN @strings LIKE '[0-3][0-9][/-][0-1][0-9][/-]____%' AND @strings NOT LIKE '__[/-][1][3-9][/-]____%'
				THEN  TRY_CAST(CONCAT(RIGHT(@strings, 4), '-', RIGHT(LEFT(@strings, 5), 2), '-', LEFT(@strings, 2)) AS DATE)
			WHEN @strings LIKE '[0-1][0-9][/-][0-3][0-9][/-]____%' AND @strings NOT LIKE '[1][3-9][/-]__[/-]____%'
				THEN  TRY_CAST(CONCAT(RIGHT(@strings, 4), '-', LEFT(@strings, 2), '-', RIGHT(LEFT(@strings, 5), 2)) AS DATE)
			WHEN @strings LIKE '[1-2][0-9][0-9][0-9][0-1][0-9][0-3][0-9]%' AND @strings NOT LIKE '____[1][3-9]__%'
				THEN  TRY_CAST(CONCAT(LEFT(@strings, 4), '-', LEFT(RIGHT(@strings, 4), 2), '-', RIGHT(@strings, 2)) AS DATE)
			WHEN @strings LIKE '[1-2][0-9][0-9][0-9][0-3][0-9][0-1][0-9]%' AND @strings NOT LIKE '______[1][3-9]%'
				THEN  TRY_CAST(CONCAT(LEFT(@strings, 4), '-', RIGHT(@strings, 2), '-', LEFT(RIGHT(@strings, 4), 2)) AS DATE)
			WHEN @strings LIKE '[0-1][0-9][0-3][0-9][1-2][0-9][0-9][0-9]%' AND @strings NOT LIKE '[1][3-9]______%'
				THEN  TRY_CAST(CONCAT(RIGHT(@strings, 4), '-', RIGHT(LEFT(@strings, 4), 2), '-', LEFT(@strings, 2)) AS DATE)
			WHEN @strings LIKE '[0-3][0-9][0-1][0-9][1-2][0-9][0-9][0-9]%' AND @strings NOT LIKE '__[1][3-9]____%'
				THEN  TRY_CAST(CONCAT(RIGHT(@strings, 4), '-', LEFT(@strings, 2), '-', RIGHT(LEFT(@strings, 4), 2)) AS DATE)
			ELSE TRY_CAST(@strings AS DATE)
		END 
END
GO


-- ----------------------------
-- function structure for fx_trim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_trim]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_trim]
GO

CREATE FUNCTION [dbo].[fx_trim]
( @TEXT_TO_TRIM AS nvarchar(MAX) = ''
)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @source nvarchar(MAX), @result nvarchar(MAX);
	SET @source = @TEXT_TO_TRIM;
	SET @result = @source;

	WHILE (CHARINDEX('  ', @result) > 0)
	BEGIN
		SET @result = REPLACE(@result, '  ', ' ');
	END
	

	SET @result = LTRIM(RTRIM(@result));

  -- routine body goes here, e.g.
  -- SELECT 'Navicat for SQL Server'
  RETURN @result
END
GO


-- ----------------------------
-- function structure for fx_common_stringSplit
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_common_stringSplit]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_common_stringSplit]
GO

CREATE FUNCTION [dbo].[fx_common_stringSplit]
( 
	@string_list varchar(max)
	,@delimiter varchar(max)
)

RETURNS @result TABLE (
	WORD varchar(max)
)
AS
BEGIN
	DECLARE
		@work_word varchar(max) = @string_list
		,@added_word varchar(max) = ''
		,@index_num integer = 0
		,@LENGTH INT = 0;
		
	WHILE(CHARINDEX(@delimiter, @work_word) > 0)
	BEGIN
		SET @index_num = CHARINDEX(@delimiter, @work_word) - 1;
		SET @added_word = LEFT(@work_word, @index_num);
		INSERT INTO @result VALUES (@added_word);
		SET @LENGTH = LEN(@work_word) - (LEN(@added_word) + LEN(REPLACE(@delimiter, ' ', '.')));
		SET @LENGTH = CASE WHEN @LENGTH <0 THEN 0 ELSE @LENGTH END;
		SET @work_word = RIGHT(@work_word, @LENGTH);
	END
	
	INSERT INTO @result VALUES (@work_word);
	DELETE FROM  @result WHERE WORD = '';
	RETURN
END
GO


-- ----------------------------
-- function structure for fx_similarity_levenshtein
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_similarity_levenshtein]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_similarity_levenshtein]
GO

CREATE FUNCTION [dbo].[fx_similarity_levenshtein]
(
	@text_1 AS varchar(max)
	,@text_2 AS varchar(max)
	,@limiter AS decimal(20,4) = 0.5
)
RETURNS decimal(20,4)
AS
BEGIN
	DECLARE
		@result decimal(20, 4)
		,@work_t1 varchar(max) = [dbo].[fx_trim](@text_1) 
		,@work_t2 varchar(max) = [dbo].[fx_trim](@text_2)
		,@len_t1 INT = 0 
		,@len_t2 INT = 0
		,@pointer_1 INT = 1
		,@pointer_2 INT = 1;
		DECLARE @matrix TABLE (
			LABEL1 integer
			,LABEL2 integer
			,CONST_ integer
		);
		
	-----------------------------------------------------
	
	SET @len_t1 = LEN(@work_t1);
	SET @len_t2 = LEN(@work_t2);
	
	-----------------------------------------------------
	
	IF(@len_t1 != 0 AND @len_t2 != 0)
	BEGIN
		INSERT INTO @matrix VALUES (0, 0, 0);
		
		WHILE @pointer_1 <= @len_t1
		BEGIN
			SET @pointer_2 = 1;
			INSERT INTO @matrix VALUES (@pointer_1, 0, @pointer_1);
			WHILE @pointer_2 <= @len_t2
			BEGIN
				INSERT INTO @matrix VALUES (0, @pointer_2, @pointer_2);
				
				INSERT INTO @matrix VALUES (
					@pointer_1, @pointer_2
					,COALESCE(
						(
							SELECT
								MIN(CONST_)
							FROM @matrix
							WHERE LABEL1 BETWEEN @pointer_1 - 1 AND @POINTER_1
							AND LABEL2 BETWEEN @pointer_2 - 1 AND @POINTER_2
						), 0
					) +
					CASE WHEN RIGHT(LEFT(@work_t1, @pointer_1), 1) = RIGHT(LEFT(@work_t2, @pointer_2), 1) THEN 0 ELSE 1 END
				);
				
				SET @pointer_2 = @pointer_2 + 1;
			END
			SET @pointer_1 = @pointer_1 + 1;
		END
	END ELSE RETURN 0.00
	
	-----------------------------------------------------
	
	SET @result = 1.0000 - COALESCE((
		SELECT
			[EFFORT].[VAL] / [TEXT].[LEN]
		FROM (
			SELECT
				MIN(TRY_CAST(CONST_ AS decimal(20, 2))) [VAL]
			FROM @matrix
			WHERE (
				LABEL1 = @len_t1
				OR LABEL2 = @len_t2
			)
			AND NOT (
				LABEL1 = 0
				OR LABEL2 = 0
			)
			AND (
				LABEL2 >= @len_t1
				OR LABEL1 >= @len_t2
			)
			
		) [EFFORT]
		OUTER APPLY (SELECT TRY_CAST(MIN(LEN) AS decimal(20, 2)) [LEN] FROM (VALUES (@len_t1), (@len_t2))[TEMP](LEN))[TEXT]
	), 1.00);
	
	/*----------------------------------------------------- 
	
	IF(@len_t1 != 0 AND @len_t2 != 0)
	BEGIN
		INSERT INTO @matrix VALUES ('0,0', 0);
		
		WHILE @pointer_1 <= @len_t1
		BEGIN
			SET @pointer_2 = 1;
			INSERT INTO @matrix VALUES (CONCAT(@pointer_1, ',0'), 0);
			WHILE @pointer_2 <= @len_t2
			BEGIN
				INSERT INTO @matrix VALUES (CONCAT('0,', @pointer_2), 0);
				
				INSERT INTO @matrix VALUES (
					CONCAT(@pointer_1, ',', @pointer_2)
					,COALESCE(
						(
							SELECT
								MAX(CONST_)
							FROM @matrix
							WHERE (
								(
									LABEL LIKE CONCAT('%,', @pointer_2 - 1)
									OR LABEL LIKE CONCAT(@pointer_1 - 1, ',%')
								) AND NOT (
									LABEL LIKE '%,0'
									OR LABEL LIKE '0,%'
								) AND LABEL NOT IN (
								--CONCAT(@pointer_1 - 1, ',', @pointer_2 - 1)
								CONCAT(@pointer_1 - 1, ',', @pointer_2)
								,CONCAT(@pointer_1, ',', @pointer_2 - 1)
							)
							)
						), 0
					) +
					CASE WHEN RIGHT(LEFT(@work_t1, @pointer_1), 1) = RIGHT(LEFT(@work_t2, @pointer_2), 1) THEN 1 ELSE 0 END
				);
				
				SET @pointer_2 = @pointer_2 + 1;
			END
			SET @pointer_1 = @pointer_1 + 1;
		END
	END
	
	-----------------------------------------------------
	
	SET @result = COALESCE((
		SELECT
			[MATCH].[VAL] / [TEXT].[LEN]
		FROM (
			SELECT
				MAX(TRY_CAST(CONST_ AS decimal(20, 2))) [VAL]
			FROM @matrix
			WHERE (
				LABEL LIKE (CONCAT(@len_t1, ',%'))
				OR LABEL LIKE (CONCAT('%,', @len_t2))
			)
			AND NOT (
				LABEL LIKE ('0,%')
				OR LABEL LIKE ('%,0')
			)
			AND (
				REPLACE(LABEL, CONCAT(@len_t1, ','), '') >= CONCAT('', @len_t1)
				OR REPLACE(LABEL, CONCAT(',', @len_t2), '') >= CONCAT('', @len_t2)
			)
		) [MATCH]
		OUTER APPLY (SELECT TRY_CAST(MIN(LEN) AS decimal(20, 2)) [LEN] FROM (VALUES (@len_t1), (@len_t2))[TEMP](LEN))[TEXT]
	), 0.00);
	
	-----------------------------------------------------*/
	
	SET @result = CASE WHEN @result < @limiter THEN 0.00 ELSE @result END;
	RETURN @result;
END
GO


-- ----------------------------
-- function structure for fx_similarity_JaroWinkler
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fx_similarity_JaroWinkler]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fx_similarity_JaroWinkler]
GO

CREATE FUNCTION [dbo].[fx_similarity_JaroWinkler] (
	@text_1 AS varchar(max)
	,@text_2 AS varchar(max)
	,@limiter AS decimal(20,4) = 0.5
)
RETURNS decimal(20,4)
AS
BEGIN

	DECLARE
		@result decimal(20, 4)
		,@work_t1 varchar(max) = [dbo].[fx_trim](@text_1) 
		,@work_t2 varchar(max) = [dbo].[fx_trim](@text_2)
		,@len_t1 INT = 0 
		,@len_t2 INT = 0
		,@match_window INT = 0
		,@common_chars INT = 0
		,@transpositions INT = 0
		,@jaro_similarity float = 0.00
		,@jaro_winkler_distance float = 0.00
		,@prefix_len INT = 0;
		
	-----------------------------------------------------
	
	SET @len_t1 = LEN(@work_t1);
	SET @len_t2 = LEN(@work_t2);
	SET @match_window = FLOOR((SELECT MAX(LEN) FROM (VALUES (@len_t1), (@len_t2))[TEMP](LEN)) / 2.0) - 1;
	
	-----------------------------------------------------
	
	IF @match_window < 0
		SET @match_window = 0;
		
	SET @common_chars = (
		SELECT COUNT(1) [NUM]
		FROM (
			SELECT DISTINCT SUBSTRING(@work_t1, N, 1) [NUM]
			FROM [dbo].[numbers]
			WHERE N BETWEEN 1 AND @len_t1
				AND SUBSTRING(@work_t1, N, 1) = SUBSTRING(@work_t2, N, 1)
		) [TEMP]
	);
	
	SET @transpositions = (
		SELECT COUNT(1) [NUM]
		FROM (
			SELECT DISTINCT SUBSTRING(@work_t1, N, 1) [NUM]
			FROM [dbo].[numbers]
			WHERE N BETWEEN 1 AND @len_t1
				AND SUBSTRING(@work_t1, N, 1) = SUBSTRING(@work_t2, N, 1)
				AND ABS(N - CHARINDEX(SUBSTRING(@work_t1, N, 1), @work_t2)) <= @match_window
		) [TEMP]
	);
	
	SET @jaro_similarity = CASE
		WHEN @common_chars = 0 THEN 0
		ELSE (
			(CONVERT(FLOAT, @common_chars) / @len_t1)
			+ (CONVERT(FLOAT, @common_chars) / @len_t2)
			+ (
				(CONVERT(FLOAT, @common_chars - @transpositions) / @common_chars)
			)
		) / 3.0
		END;
		
	SET @jaro_winkler_distance = @jaro_similarity;
	
	IF @jaro_similarity > 0.7
	BEGIN
		DECLARE @prefix_length INT, @max_prefix_length INT;
		SET @max_prefix_length = 4;
		SET @prefix_length = 1;
		
		WHILE @prefix_length <= @max_prefix_length
		BEGIN
			IF SUBSTRING(@work_t1, 1, @prefix_length) = SUBSTRING(@work_t2, 1, @prefix_length)
				SET @jaro_winkler_distance = @jaro_winkler_distance + (0.1 * (1 - @jaro_winkler_distance));
			SET @prefix_length = @prefix_length + 1;
		END
	END
	
	-----------------------------------------------------
	
	SET @result = CASE WHEN @jaro_winkler_distance < @limiter THEN 0.00 ELSE @jaro_winkler_distance END;
	RETURN @result;
END
GO


-- ----------------------------
-- Primary Key structure for table Numbers
-- ----------------------------
ALTER TABLE [dbo].[Numbers] ADD CONSTRAINT [PK__Numbers__3BD019B32F69343A] PRIMARY KEY CLUSTERED ([N])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

