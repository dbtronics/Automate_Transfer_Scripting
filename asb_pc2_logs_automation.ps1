$computer_id = "ASB_PC2"

$mql_path="~/AppData\Roaming\MetaQuotes\Terminal"

$nextcloud_path = "D:\User\asbasit\NextCloud"
$log_folder = Get-Date -Format 'yyyyMMdd'
if (-not (Test-Path "$nextcloud_path\Trading_Weekly_logs\$log_folder" -PathType Container)){
	mkdir "$nextcloud_path\Trading_Weekly_logs\$log_folder"
}
if (-not (Test-Path "$nextcloud_path\Trading_Weekly_logs\$log_folder\$computer_id" -PathType Container)){
	mkdir "$nextcloud_path\Trading_Weekly_logs\$log_folder\$computer_id"
}
ls -Recurse -Force "$mql_path\*log*.csv" | mv -Destination "$nextcloud_path\Trading_Weekly_logs\$log_folder\$computer_id"
ls -Recurse -Force "$mql_path\EXTRA*.html" | mv -Destination "$nextcloud_path\Trading_Weekly_logs\$log_folder\$computer_id"