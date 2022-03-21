Clear-Host
$test = Get-Process | Get-Process | select name, cpu, TotalProcessorTime | Sort-Object -property TotalProcessorTime -Descending
Out-File -FilePath .\hi.txt
$test | Out-File .\hi.txt 
