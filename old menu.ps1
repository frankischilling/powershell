Clear-Host
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Red
Write-Host "written by stackoverflow xD" -BackgroundColor Gray -ForegroundColor Red
Write-Host "1 > hi" -BackgroundColor Gray -ForegroundColor Red
Write-Host "2 > Get Computer Inv" -BackgroundColor Gray -ForegroundColor Red
Write-Host "3 > Math time" -BackgroundColor Gray -ForegroundColor Red
Write-Host "4 > Close" -BackgroundColor Gray -ForegroundColor Red
$PSScriptRoot 
$compinv = $PSScriptRoot+"\createfile.ps1"
$mathtim = $PSScriptRoot+"\fun2.ps1"
Write-Host "++++++++++++++++++++++++++++++++++++++++++"
$input = Read-Host "What would you like to do?"
switch ($input) {
    '1' {  
        
    }
    '2' {
        &$compinv
        Write-Host "Open the data file with the computer info" -BackgroundColor Gray -ForegroundColor Red
    }
    '3' {
        &$mathtim
    }
    '4' {
        Exit
    }
    Default {
    }
}
