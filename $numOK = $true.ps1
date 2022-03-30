$numOK = $true
try {
    $input = Read-Host -Prompt "Enter an integer"
    $int_input = [int]$input
    Write-Host "You entered" $int_input
}
catch {
    if ($input -isnot [int]) {
        write-host "enter a int"
        $numOK = $false
    }
}