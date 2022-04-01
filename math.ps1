Clear-Host # clears
$time = Get-Date
Write-Host "Executed @ $time" -BackgroundColor red -ForegroundColor white # writes when it has been ran
$input = 0
do {
    $input = [int]::TryParse(($ask1 = Read-Host "Enter the factor"), [ref]$input)
    $input = [int]::TryParse(($ask2 = Read-Host "Enter the count"), [ref]$input)
    if (-not $input) { # if not $input then output please use a number
        Write-Host "Please use a number"
    } else {
    $factor = $ask1
    $count = $ask2
    for ($counter =1; $counter -le $count; $counter++) { #counter starts at one and checks until its less then or equal to 25 
     $answer = $counter*$factor
     Write-Host " $factor times $counter equals $answer" # writes what number the counter is at 
    }
}
} while (-not $input)
Write-Host "Counter ended @ $time" -BackgroundColor red -ForegroundColor white
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$math = $PSScriptRoot+"\math.ps1"
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Red
Write-Host "written by stackoverflow xD" -BackgroundColor Gray -ForegroundColor Red
Write-Host "1 > Go back to the Main Menu" -BackgroundColor Gray -ForegroundColor Red
Write-Host "2 > Do more math" -BackgroundColor Gray -ForegroundColor Red
$endinput = Read-Host "Would you like to do?"


switch ($endinput) {
	'1'  {
		&$main
	}
	'2' {
		&$math
	}
	Default {
		&$main
	}
}

