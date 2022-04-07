# This will be a settings menu for mainmenu.ps1 
# Please ignore shit code I am still learning and I am not so good at it right now 
# Written on Apr 4th 2022
Clear-Host
Write-Host "+++++++++++++++++++++-Welcome to the settings page!-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Black
Write-Host "Written by cat (:3)" -BackgroundColor Gray -ForegroundColor Black
Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Options" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Home" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Close" -f Red -BackgroundColor Gray;
$readhost = Read-Host "What would you like to do?"
$PSScriptRoot
$main = $PSScriptRoot+"\mainmenu.ps1"

switch ($readhost) {
    '1' {
        
    }
    '2' {
        &$main
    }
    '3' {
        Exit
    }
    Default {
        Exit
    }
}