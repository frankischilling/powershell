Clear-Host
$test = Get-Process | Get-Process | select name, cpu, TotalProcessorTime | Sort-Object -property TotalProcessorTime -Descending

$day = get-date
Out-File -FilePath .\hi.txt

$text = "LAST CHECKED @ $day"
#$text | out-file -Filepath ".\hi.txt" -Append
$text,$test5 | Out-File .\hi.txt -Append



<#$inputValue = 0
do {
    $inputValid = [int]::TryParse((Read-Host 'gimme a number'), [ref]$inputValue)
    if (-not $inputValid) {
        Write-Host "your input was not an integer..."
    }
} while (-not $inputValid)#>