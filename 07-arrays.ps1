#ways of creating an array
$variable1 = @()
$variable2 = @('leon','grinal','chelsea','hayden') 
$variable3 = 'leon','grinal','chelsea','hayden'
$variable4 = Write-Output leon grinal chelsea hayden

###########
$variable2[0]
$variable3 | ForEach-Object {"the members of pereira family are : $PSItem"}

#######
foreach ($item in $variable3) { "The family member is : $item"
    
}

######
$variable4.foreach({"the month is : $PSItem"})

$variable1.$PSItem


for ($item = 0; $item -lt $variable3.Count; $item++) {
    "The family mumber is: {0}" -f $variable3[$item];
    Write-Host "Current Position: $item"
}