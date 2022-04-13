Declare @Data     Varchar(100);
Declare @File	  Varchar(300);
Declare @Path	  Varchar(600);
Declare @Full     varchar(800);

-- Informações para fazer o backup 

Set @Data     = 'Nome-Do-Banco';
set @File     = 'Nome-Do-Arquivo' + '.bkk';
Set @Path     = 'Caminho-do-backup';
Set @Full     = @Path + '\' + @File;

Use [Master]
Backup database @Data to disk = @Full With compression
