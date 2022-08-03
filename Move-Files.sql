USE MASTER;
GO

SELECT * FROM sys.master_files;

ALTER DATABASE tempdb
MODIFY FILE ( 
    NAME = tempdev, 
    FILENAME = "DestinationPath\tempdb.mdf"
);