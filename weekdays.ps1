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
} elseif ($days -eq $w) {
	Write-Host "On Zoom Today" # Print On Zoom Today
}
#$PSScriptRoot 
$main = $PSScriptRoot+"\mainmenu.ps1"
$weekdays = $PSScriptRoot+"\weekdays.ps1"
Write-Host "+++++++++++++++++++++-Welcome 2 Da Menu (PART 2 REAL NOT CLICK BAIT??!)-+++++++++++++++++++++" -BackgroundColor Gray -ForegroundColor Black
Write-Host "written by a cat" -BackgroundColor Gray -ForegroundColor Black

Write-Host "1 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Go back to the main menu" -f Red -BackgroundColor Gray;
Write-Host "2 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "See school schedule" -f Red -BackgroundColor Gray;
Write-Host "3 > " -f Black -nonewline -BackgroundColor Gray; Write-Host "Close" -f Red -BackgroundColor Gray;

$endinput = Read-Host "What would you like to do?"


switch ($endinput) {
	'1' {
		&$main
	  }
	'2' {
		&$weekdays
	} 
	'3' {
		Exit
	}
	Default {
		&$weekdays
	}
}                                                                  