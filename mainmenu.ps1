# & 
Clear-Host
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Red
Write-Host "written by stackoverflow xD" -BackgroundColor Gray -ForegroundColor Red
Write-Host "1 > School Schedule" -BackgroundColor Gray -ForegroundColor Red
Write-Host "2 > Get Computer Inv" -BackgroundColor Gray -ForegroundColor Red
Write-Host "3 > Math time" -BackgroundColor Gray -ForegroundColor Red
Write-Host "4 > Page 2" -BackgroundColor Gray -ForegroundColor Red
Write-Host "5 > Close" -BackgroundColor Gray -ForegroundColor Red
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$compinv = $PSScriptRoot+"\createfile.ps1"
$mathtim = $PSScriptRoot+"\math.ps1"
$school = $PSScriptRoot+"\weekdays.ps1"
$page2 = $PSScriptRoot+"\menu2.ps1"
Write-Host "++++++++++++++++++++++++++++++++++++++++++"
$input = Read-Host "What would you like to do?"
switch ($input) {
    '1'  {  
        &$school
    }
    '2' {
        &$compinv
        Write-Host "Open the data file with the computer info" -BackgroundColor Gray -ForegroundColor Red
        $compinput = Read-Host "Would you like to go back? (Yes)" 
        if ($compinput -eq "Yes" -or "yes" -or "y" -or  "Y") {
            &$main
        } else {
            &$compinv
        }
    }
    '3' {
        &$mathtim
    }
    '4' {
        &$page2        
    }
    '5' {
        Exit
    }
    Default {
        &$main
    }
}
