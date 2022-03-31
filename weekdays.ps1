Clear-Host # clear to make it look nice
$days = (Get-Date).DayOfWeek # seting day to equal the day that windows gets 
Write-Host "Today is: $days"
$m = "Monday" # setting m to equal monday
$t = "Tuesday " # setting t to equal tuesday 
$w = "Wednesday" # setting w to equal wednesday 
$th = "Thursday" # setting th to equal thursday 
$f = "Friday" # setting f to equal friday 
$s = "Saturday" # setting s to equal Saturday
$sa = "Sunday" # setting sa to equal Sunday

if ($days -eq $m -or $t -or $th -or $f) { # if monday, tuesday, thursday, or friday then print in class day
    Write-Host "In Class Day" # Print In Class Day
} else { 
    Write-Host "On Zoom Today" # Print On Zoom Today
} 
$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$endinput = Read-Host "Press 1 to go back to main menu"

switch ($endinput) {
	'1' {
		&$main
	  }
	Default {}
}

                                                                              