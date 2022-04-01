$data = systeminfo.exe 
#$data2 = Get-LocalUser -Name user | select *
#$fun = gwmi win32_UserAccount | Select Name, FullName, Caption, Domain, LocalAccount | ft -AutoSize
#$loooo = Write-Host "DESKTOP-06 INCLUDING LOCAL USERS"
$data, $fun | Out-File .\inv.txt

$fun | Out-File .\allusers.txt
