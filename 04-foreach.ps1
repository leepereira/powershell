$collection = 1..10
foreach ($item in $collection) {
    Write-Host "Current Number : $item"
}

$path = "/Users/leonpereira/workspace/powershell"

foreach ($file in Get-ChildItem $path) {
    Write-Host "Current Number : $file"
}