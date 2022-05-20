Declare @Database Varchar(100);
Declare @File	  Varchar(300);
Declare @Path	  Varchar(600);
Declare @Full     varchar(800);
Declare @Data     varchar;
Declare @Log      varchar;
Declare @Mdf      varchar;
Declare @LogPath  varchar;

-- Informações para restaurar o backup

Set @Database = 'Nome-banco';
set @File     = 'Arquivo' + '.bkk';
Set @Path     = 'Caminho-arquivo';
Set @Full     = @Path + '\' + @File;

Set @Data     = @Database + '_Data';
Set @Log      = @Database + '_Log';
Set @MdfPath  = @Path + '\' + @Database + '.mdf';
Set @LogPath  = @Path + '\' + @Database + '.log';

Use [Master];

Restore database @Database From disk=@Full WITH NORECOVERY,
MOVE @Data TO @MdfPath,
MOVE @Log  TO @LogPath,
NOUNLOAD, STATS = 5