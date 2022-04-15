Clear-Host
Import-Csv .\email.csv | ForEach-Object {

}


<#
read a csv file of the form <lastName, <firstName>, <graduation_year><domain> and creare an email address of the form <gradyear2digits><firstInital><lastName>@sanford.org
e.g. 22fgluck@sanford.org
File sample: Gluck, Fredic, 2022,wells.org
Write these to a file and send a welcome email
#>