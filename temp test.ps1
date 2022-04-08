# here is the logic for the math
# (x °C * 9/5) + 32 = 73.4°F

[int]$fun = Read-Host "what u want "

$math = (($fun) * 9/5) + 32

write-host $math

#$answertemp = ($tempneed2 + 32) * 9 / 5 #($tempneed2 * 9)/5) + 32
