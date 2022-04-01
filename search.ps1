Clear-Host
$input1 = Read-Host "What would you like to search?"

$Site = "www.google.com/search?q=$input1"
$Test = Invoke-WebRequest -URI $Site
$Test.Links | Foreach {$_.href }
$Test | Export-CSV .\search.csv
Clear-Host
# MENU STUff BELOWWW
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$menu2 = $PSScriptRoot+"\menu2.ps1"
$search = $PSScriptRoot+"\search.ps1"
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Red
Write-Host "written by james neathawk (reaL)" -BackgroundColor Gray -ForegroundColor Red
Write-Host "1 > Go back to page 2?" -BackgroundColor Gray -ForegroundColor Red
Write-Host "2 > Go back to the main menu?" -BackgroundColor Gray -ForegroundColor Red
Write-Host "3 > Do more searches?" -BackgroundColor Gray -ForegroundColor Red
$input2 = Read-Host "Would you like to do?"
#END MENU STUFFFF

switch ($input2) {
    '1' {
        &$menu2
    }
    '2' {
        &$main
    }
    '3' {
        &$search
    }
    Default {
        Exit
    }
}