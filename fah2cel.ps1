Clear-Host
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu (PART 2 REAL NOT CLICK BAIT??!)-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Black
Write-Host "written by  a cat" -BackgroundColor Gray -ForegroundColor Black

Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Celsius to Fahrenheit" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Fahrenheit to Celsius" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Go back to the main menu" -f Red -BackgroundColor Gray;
Write-Host "4 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Exit" -f Red -BackgroundColor Gray;
$PSScriptRoot 
$main = $PSScriptRoot+"\main.ps1"

$cat = Read-Host "What would you like to do?"
switch ($cat) {
    '1' {
        write-host "cel 2 f"
    }
    '2' {

    }
    '3' {
        &$main
    }
    '4' {

    }
    Default {Exit}
}

function fahrenheit2cel {

    $cat = Read-Host "What would you like to convert to?"
    Write-Host "1 > Celsius to Fahrenheit"
    Write-Host "2 > Fahrenheit to Celsius"


}
#param ([int]$meow)
   <# $fah = Read-Host "What is the temp in F?"
    ($fah - 32) * 5 / 9
fahrenheit#>