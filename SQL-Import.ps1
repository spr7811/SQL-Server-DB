#sql import

$user = 'server'
$pass = ConvertTo-SecureString "Rajasekhar@7" -AsPlainText -Force
$stgaccesskey = Get-AzStorageAccountKey -ResourceGroupName rr-demorg -Name rrstorageaccount0050

New-AzSqlDatabaseImport -DatabaseName sqldb0055 -ServerName eastsqlserver879 -Edition Basic -DatabaseMaxSizeBytes 2GB -StorageKeyType StorageAccessKey  -StorageKey $stgaccesskey.Value[0] -StorageUri 'https://rrstorageaccount0050.blob.core.windows.net/backup/sqldb0050-2021-10-27-14-12.bacpac' -AdministratorLogin $user -AdministratorLoginPassword $pass -ResourceGroupName rr-demorg -Verbose -ServiceObjectiveName Basic -AuthenticationType None 
