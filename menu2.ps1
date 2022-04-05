Clear-Host
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu (PART 2 REAL NOT CLICK BAIT??!)-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Black
Write-Host "written by  a cat" -BackgroundColor Gray -ForegroundColor Black


Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Search" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "-error-" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "-error-" -f Red -BackgroundColor Gray;
Write-Host "4 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Go back to the main menu" -f Red -BackgroundColor Gray;
Write-Host "5 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Exit" -f Red -BackgroundColor Gray;

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