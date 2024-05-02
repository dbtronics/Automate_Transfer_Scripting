$computer_id = "VPS_64"

$mql_path="~/AppData\Roaming\MetaQuotes\Terminal"

$nextcloud_path = "~\NextCloud"
$log_folder = Get-Date -Format 'yyyyMMdd'

if (-not (Test-Path "$nextcloud_path\Trading_Weekly_logs\$computer_id" -PathType Container)){
	mkdir "$nextcloud_path\Trading_Weekly_logs\$computer_id"
}

if (-not (Test-Path "$nextcloud_path\Trading_Weekly_logs\$computer_id\$log_folder" -PathType Container)){
        mkdir "$nextcloud_path\Trading_Weekly_logs\$computer_id\$log_folder"
}

ls -Recurse -Force "$mql_path\*log*.csv" | mv -Destination "$nextcloud_path\Trading_Weekly_logs\$computer_id\$log_folder"
ls -Recurse -Force "$mql_path\EXTRA*.html" | mv -Destination "$nextcloud_path\Trading_Weekly_logs\$computer_id\$log_folder"
