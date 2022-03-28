Clear-Host
$test = Get-Process | Get-Process | select name, cpu, TotalProcessorTime | Sort-Object -property TotalProcessorTime -Descending
Out-File -FilePath .\hi.txt
$test | Out-File .\hi.txt 

$uinput = Read-Host "what is ur fav number"
Write-Output "You're fav number is $uinput"


if ($uinput -eq [int]) {
    Write-Host "thx"
} else {
    write-host "xD no"
}

