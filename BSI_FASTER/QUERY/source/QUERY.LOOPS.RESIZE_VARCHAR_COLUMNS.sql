DECLARE @sql_query nvarchar(max), @DATA_TYPE varchar(max), @COLUMN_NAME varchar(max), @schema_name varchar(max), @table_name varchar(max), @LENGTH INTEGER
DECLARE load_cursor CURSOR FOR 
	SELECT
		'series'
		,'IFOIS.LOAN_DAILY.2023-05-03'
	--SELECT /*TOP 1*/ [sys].name
	/*FROM sys.objects [sys]
	LEFT JOIN
		(
			SELECT o.[name], fg.[name] AS FileGroupName
			FROM sys.indexes i
			INNER JOIN sys.filegroups fg ON i.data_space_id = fg.data_space_id
			INNER JOIN sys.all_objects o ON i.[object_id] = o.[object_id]
			WHERE i.data_space_id = fg.data_space_id AND o.type = 'U'
		) [FG]
		ON [sys].name = [FG].name
	WHERE type_desc = 'USER_TABLE'
	AND
		(
			[sys].name LIKE ('%.LOAN_DAILY.%')
			OR
			[sys].name LIKE ('%.HASANAH_CARD.%')
			OR
			[sys].name LIKE ('%.PORTOFOLIO_DAILY.%')
			OR
			[sys].name LIKE ('%.IFOS_JFAST.%')
		)
	--AND [sys].name = 'BSI.PORTOFOLIO_DAILY.2022-06-19'
	--AND [sys].name NOT LIKE ('BSI.PORTOFOLIO_DAILY.2021-%')
		--AND name != 'BSI.PORTOFOLIO_DAILY.2021-02-28'
	--AND [FG].FileGroupName NOT IN ('HISTORY')
	ORDER BY [sys].name ASC
	OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY
	*/

OPEN load_cursor
FETCH NEXT FROM load_cursor INTO @schema_name, @table_name

WHILE @@FETCH_STATUS = 0 
BEGIN

	DECLARE second_cursor CURSOR FOR
		SELECT column_name FROM 
	(
		SELECT column_name
		,ordinal_position
		from information_schema.columns
		where table_name= @table_name
		AND table_schema = @schema_name
	) [TEMP]
	ORDER BY ordinal_position


	OPEN second_cursor
	FETCH NEXT FROM second_cursor INTO @COLUMN_NAME

	WHILE @@FETCH_STATUS = 0 
	BEGIN
		SET @DATA_TYPE = (SELECT
			DATA_TYPE 
		FROM INFORMATION_SCHEMA.COLUMNS
		WHERE 
				 TABLE_NAME   = @table_name AND 
				 COLUMN_NAME  = @COLUMN_NAME AND
				 TABLE_SCHEMA  = @schema_name
		GROUP BY
			DATA_TYPE
		)
		IF @DATA_TYPE IN ('varchar', 'nvarchar')
		BEGIN
			SET @sql_query = CONCAT('SELECT @x = COALESCE(MAX(LEN([', @COLUMN_NAME, '])), 1) FROM [', @schema_name, '].[', @table_name, ']')
			EXEC sp_executesql @sql_query, N'@x INTEGER out', @LENGTH out
			PRINT CONCAT(@table_name, ' | ', @COLUMN_NAME, ' | ', @DATA_TYPE, ' | ', @LENGTH)
			SET @sql_query = CONCAT('ALTER TABLE [', @schema_name, '].[', @table_name, '] ALTER COLUMN [', @COLUMN_NAME, '] ', @DATA_TYPE, '(', @LENGTH,')')
			EXEC sp_executesql @sql_query
		END
		FETCH NEXT FROM second_cursor INTO @COLUMN_NAME
	END

	CLOSE second_cursor
	DEALLOCATE second_cursor

	FETCH NEXT FROM load_cursor INTO @schema_name, @table_name
END

CLOSE load_cursor
DEALLOCATE load_cursor; 