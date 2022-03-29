$time = Get-Date


$inputValue = 0
do {
    $inputValid = [int]::TryParse(($ask = Read-Host "Enter the factor"), [ref]$inputValue)
    if (-not $inputValid) {
        Write-Host "your input was not an integer..."
    } else {
    $factor = $ask
    for ($counter =1; $counter -le 50; $counter++) { #counter starts at one and checks until its less then or equal to 25 
     $answer = $counter*$factor
     Write-Host " $factor times $counter equals $answer" # writes what number the counter is at 
    }
}
} while (-not $inputValid)