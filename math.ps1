Clear-Host # clears
$time = Get-Date
Write-Host "Executed @ $time" -BackgroundColor red -ForegroundColor white # writes when it has been ran
Write-Host "DO NOT USE NEGATIVE NUMBERS" -BackgroundColor Black -ForegroundColor Red
$mathinput = 0
do {
    $mathinput = [int]::TryParse(($ask1 = Read-Host "Enter the factor"), [ref]$mathinput)
    $mathinput = [int]::TryParse(($ask2 = Read-Host "Enter the count"), [ref]$mathinput)
    if (-not $mathinput) { # if not $input then output please use a number
        Write-Host "Please enter a number"
    } else {
    $factor = $ask1
    $count = $ask2
    for ($counter =1; $counter -le $count; $counter++) { #counter starts at one and checks until its less then or equal to 25 
     $answer = $counter*$factor
     Write-Host " $factor times $counter equals $answer" # writes what number the counter is at 
    }
}
} while (-not $mathinput)
Write-Host "Counter ended @ $time" -BackgroundColor red -ForegroundColor white
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$math = $PSScriptRoot+"\math.ps1"
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Black
Write-Host "written by stackoverflow xD" -BackgroundColor Gray -ForegroundColor Black
Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Go back to the Main Menu" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Do more math" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Close" -f Red -BackgroundColor Gray;
$endinput = Read-Host "Would you like to do?"

switch ($endinput) {
	'1'  {
		&$main
	}
	'2' {
		&$math
	}
	'3' {
		Exit
	}
	Default {
		&$main
	}
}

