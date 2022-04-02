$path = "./test.json"
#Import JSON
$json = Get-Content -Path $path | ConvertFrom-Json
#Export JSON
$json | ConvertFrom-Json | Out-File $path
#Test JSON
Get-Content -Path $path -Raw | Test-Json

###############
$path = "./test.json"
$json = (Get-Content -Path $path) | ConvertFrom-Json
$json.name

foreach ($item in $json) {
    $item.name.name | Select-Object Height, Gender
}

foreach ($item in $json) {
    $item.name.name | Select-Object -ExpandProperty name | Select-Object Height, Gender
}

###############
$uri = "https://swapi.dev/api/people/"

#load JSON file
$json = Invoke-RestMethod -Uri $uri

#load json data
foreach ($item in $json.results) {
    $item | Select-Object Name, Height, Gender
}