Clear-Host # clears
$time = Get-Date
Write-Host "Executed @ $time" -BackgroundColor red -ForegroundColor white # writes when it has been ran
	$input = 0
	do {
		$input = [int]::TryParse(($ask = Read-Host "Enter the factor"), [ref]$input) # asking user to enter a factor
		if (-not $input) { # if not $input then output please use a number
			Write-Host "Please use a number"
		} else {
		$factor = $ask
		for ($counter =1; $counter -le 50; $counter++) { #counter starts at one and checks until its less then or equal to 25 
		 $answer = $counter*$factor
		 Write-Host " $factor times $counter equals $answer" # writes what number the counter is at 
		}
	}
	} while (-not $input)
Write-Host "Counter ended @ $time" -BackgroundColor red -ForegroundColor white
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$endinput = Read-Host "Press 1 to go back to main menu"

switch ($endinput) {
	'1' {
		&$main
	  }
	Default {}
}

                                                                              