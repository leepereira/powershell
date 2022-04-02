#ways of creating an array
$variable1 = @()
$variable2 = @('leon','grinal','chelsea','hayden') 
$variable3 = 'leon','grinal','chelsea','hayden'
$variable4 = Write-Output leon grinal chelsea hayden

$variable2[0]
$variable3 | ForEach-Object {"the members of pereira family are : $PSItem"}

foreach ($item in $variable3) { "The family member is : $item"
    
}
