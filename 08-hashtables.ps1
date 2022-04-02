$variable1 = @{}
$variable2 = @{Month =5; Name = "May"; Season = "Spring"}
$variable3 = [ordered]@{Month =5; Name = "May"; Season = "Spring"}

$variable2.Values

$countrypop = @{
    china = 11121212121;
    india = 132313131231231;
    america = 1313123123;
    spain = 211231
}
$countrypop.Keys | ForEach-Object {
    $output = '{0} has a population of {1}' -f $_, $countrypop[$_];  #$_ refers to name of the country
    Write-Output $output
}


foreach ($key in $countrypop.keys) {
    $output2 = '{0} has a poplulation of {1}' -f $key, $countrypop[$key];
    Write-Output $output2
    
}