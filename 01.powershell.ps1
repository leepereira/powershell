https://kbroman.org/github_tutorial/pages/init.html

$variable = 'value'

if($variable)
{
    Write-Output "The $variable check is true"
}

else {
    Write-Output "The $variable check is false"
}
#####


if ($variable -eq 'value')
{
    Write-Host "this works"
}

#####
$array = 1..10
$array

if ($array -contains 6) {
    Write-Host "this is a number"
}

if (($array -contains 6) -and ($array -contains 8)) {
    Write-Host "there is 6 and 8"
}

#####

$variable1 = 1
$variable2 = 3

($variable1 -eq $variable2) ? $true : $false

