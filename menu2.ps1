Clear-Host
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu (PART 2 REAL NOT CLICK BAIT??!)-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Red
Write-Host "written by  a cat" -BackgroundColor Gray -ForegroundColor Red
Write-Host "1 > Search " -BackgroundColor Gray -ForegroundColor Red
Write-Host "2 >  " -BackgroundColor Gray -ForegroundColor Red
Write-Host "3 >  " -BackgroundColor Gray -ForegroundColor Red
Write-Host "4 > Go back to the main menu" -BackgroundColor Gray -ForegroundColor Red
Write-Host "5 > Exit" -BackgroundColor Gray -ForegroundColor Red
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$search = $PSScriptRoot+"\search.ps1"
$c = $PSScriptRoot+"\.ps1"
Write-Host "++++++++++++++++++++++++++++++++++++++++++"
$input = Read-Host "What would you like to do?"

switch ($input) {
    '1' {
        &$search
    }
    '2' {

    }
    '3' {

    }
    '4' {
        &$main
    }
    '5' {
        Exit
    }
    Default {
        &$main
    }
}