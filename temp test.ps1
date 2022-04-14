Clear-Host
# notes in here


#test path to test ifa file exist 
#add content to add contten to the end of a file
#set  contatne to write ot a file 
$testpath = 

if (Test-Path -Path $profile -PathType leaf) {
     writelog "The file already exists"
} else {
    new-item 
    writelog "The file does "
}   

$timem = Get-Date -DisplayHint Date

function writelog {
    param ([string]$message)
    Write-Host ">>" $message $timem
    Add-Content $testpath ">>" $message $timem 
}

writelog "it is done at"



if($fileexist) {
    foreach ($fileline in Get-Content $FullLogFile) {
        $chanted line = "$now time" + ""  = "cahnged"  + $fileline
        Write-Host $cahngedline 
       }
}

foreach
Get-Content