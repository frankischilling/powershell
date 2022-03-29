Clear-Host
$test = Get-Process | Get-Process | select name, cpu, TotalProcessorTime | Sort-Object -property TotalProcessorTime -Descending
Out-File -FilePath .\hi.txt
$test | Out-File .\hi.txt 



<#$inputValue = 0
do {
    $inputValid = [int]::TryParse((Read-Host 'gimme a number'), [ref]$inputValue)
    if (-not $inputValid) {
        Write-Host "your input was not an integer..."
    }
} while (-not $inputValid)#>