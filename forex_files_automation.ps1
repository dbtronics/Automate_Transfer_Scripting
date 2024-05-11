$csv_path = "C:\Users\asbas\Dropbox\Investments\Prop Farming\Reports\log\Misc"
$html_path = "C:\Users\asbas\Dropbox\Investments\Prop Farming\Reports"
$nextcloud_path = "C:\Users\asbas\Nextcloud"

ls -Recurse "$nextcloud_path\Trading_Weekly_Logs\*.csv" | mv -Destination "$csv_path"
ls -Recurse "$nextcloud_path\Trading_Weekly_Logs\*.html" | mv -Destination "$html_path"