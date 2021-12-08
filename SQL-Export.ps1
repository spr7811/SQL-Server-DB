#sql export

$user = 'server'
$pass = ConvertTo-SecureString "Rajasekhar@7" -AsPlainText -Force
$stgaccesskey = Get-AzStorageAccountKey -ResourceGroupName rr-demorg -Name rrstorageaccount0050

New-AzSqlDatabaseExport -DatabaseName sqldatabase879 -ServerName eastsqlserver879 -StorageKeyType StorageAccessKey -StorageKey $stgaccesskey.Value[0] -StorageUri 'https://rrstorageaccount0050.blob.core.windows.net/backup/sqldb0050-2021-10-27-14-12.bacpac' -AdministratorLogin $user -AdministratorLoginPassword $pass -Verbose -ResourceGroupName rr-demorg
