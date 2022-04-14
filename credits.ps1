# This will be a settings menu for mainmenu.ps1 
# Please ignore shit code I am still learning and I am not so good at it right now 
# Written on Apr 4th 2022
Clear-Host
Write-Host "+++++++++++++++++++++-Welcome to the credits page!-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Black
Write-Host "Written by cat (:3)" -BackgroundColor Gray -ForegroundColor Black
Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Credits" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Home" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Close" -f Red -BackgroundColor Gray;
$readhost = Read-Host "What would you like to do?"
$PSScriptRoot
$main = $PSScriptRoot+"\mainmenu.ps1"
$credits = $PSScriptRoot+"\credits.ps1"

switch ($readhost) {
    '1' {
        Write-Host "it was made alll by me in my class 4 fun thx for learning wiht me as I went along u can see all of the source code and how bad it is but its cool ok goodbye" -BackgroundColor Gray -ForegroundColor Blue
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