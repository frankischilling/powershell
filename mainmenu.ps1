# & 
Clear-Host
$newfunny = Get-Random -InputObject $funnyname
$funnyname=’stackoverflow’,’frank’,’james neathawk’,’cat’


Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor black
Write-Host "written by $newfunny xD" -BackgroundColor Gray -ForegroundColor Black




Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "School Schedule" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Get Computer Inv" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Math time" -f Red -BackgroundColor Gray;
Write-Host "4 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Page 2" -f Red -BackgroundColor Gray;
Write-Host "5 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Settings" -f Red -BackgroundColor Gray;
Write-Host "6 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Close" -f Red -BackgroundColor Gray;

$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$compinv = $PSScriptRoot+"\createfile.ps1"
$mathtim = $PSScriptRoot+"\math.ps1"
$school = $PSScriptRoot+"\weekdays.ps1"
$page2 = $PSScriptRoot+"\menu2.ps1"
$settings = $PSScriptRoot+"\settings.ps1" 
Write-Host "++++++++++++++++++++++++++++++++++++++++++"
$menuinput = Read-Host "What would you like to do?"
switch ($menuinput) {
    '1'  {  
        &$school
    }
    '2' {
        &$compinv
        Write-Host "Open the data file with the computer info" -BackgroundColor Gray -ForegroundColor Black
        $compinput = Read-Host "Would you like to read the file? (Yes)" 
        if ($compinput -eq "Yes" -eq "yes") {
            Invoke-ITem C:\Users\FHagan\Desktop\powershell\ps\inv.txt
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
        &$settings
    }
    '6' {
        Exit
    }
     Default {
        &$main
    }
}