Clear-Host
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu (PART 2 REAL NOT CLICK BAIT??!)-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Black
Write-Host "written by  a cat" -BackgroundColor Gray -ForegroundColor Black

Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Fahrenheit to Celsius" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Celsius to Fahrenheit" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Go back to the main menu" -f Red -BackgroundColor Gray;
Write-Host "4 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Exit" -f Red -BackgroundColor Gray;
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$tempwork = $PSScriptRoot+"\tempwork.ps1"


$cat = Read-Host "What would you like to do?"
switch ($cat) {
    '1' {
      function fah2cel {
        $tempneed = Read-Host "What is the temp in F?"
        $tempanswer = ($tempneed - 32) * 5 / 9
        Write-Host "The temp in C is $tempanswer"
        }
       fah2cel 
       $endinput = Read-Host "Would you like to do more?"
        if ($endinput -eq "Yes" -or "yes" -or "y" -or "Y") {
            &$tempwork
        }else {
            Exit
        }
    }

    '2' {
        function cel2fah {
            [int]$tempneed2 = Read-Host "What is the temp in C?"
            $answertemp = (($tempneed2) * 9/5) + 32 #($tempneed2 * 9)/5) + 32
            Write-Host "The temp in F is $answertemp"
        }
        cel2fah
        $endinput2 = Read-Host "Would you like to do more?"
        if ($endinput2 -eq "Yes" -or "yes" -or "y" -or "Y") {
            &$tempwork
        }else {
            Exit
        }
    }
    '3' {
        &$main
    }
    '4' {
        Exit
    }
    Default {Exit}
}