Clear-Host # clears
$time = Get-Date
Write-Host "Executed @ $time" -BackgroundColor red -ForegroundColor white # writes when it has been ran
for ($counter =1; $counter -le 25; $counter++) { #counter starts at one and checks until its less then or equal to 25 
    Write-Host "The Number Is: $counter" # writes what number the counter is at 
}