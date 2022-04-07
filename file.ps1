$fun = "Abrham Lincoln"



Clear-Host
$length = "abcdef"
$fun = "abc12345def"
$replace = "c:/users/rick/filename.docx"

$lengthfun = $length.Length 
$new = $fun.Substring(3, 5) 
$replacefun = $replace.Replace("/", "\")

Write-Host $new
Write-Host $lengthfun
Write-Host $replacefun

$name = $abe 
#$user = $name -split
$abe = "Abraham Lincoln"[-1..-100000] -join ''
$abe.Split( '' )
[array]::Reverse($abe)

$numberString = "12345"

Write-Host $targetString



function buildfile {
 #param ([string]$name)

 for ($counter = 1; $counter -le 10; $counter++) {
    new-item -path .\test\a_$counter.txt -ItemType File -Value "The test"
 } 
}

buildfile 
# write a set of 10 file names beginngin with file_0.txt and ending with file_10
# write a set of 10 tiles name begging with file<n>.txt and ending with file_<n>10.txt 
#then calls the fucntion with a different beginning file name 
