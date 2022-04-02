#create an empty PSCustomObject
$variable1 = [PSCustomObject]@{}

#Create an empty PSCustomObject
$variable2 = New-Object -TypeName PSObject

#create an populate a PSCustomObject
$countrypop = [PSCustomObject]@{
    'china' = '11121212121';
    'india' = '132313131231231';
    'america' = '1313123123';
    'spain' = '211231'
}


#Add items to a PSCustomObject

$countrypop | Add-Member -MemberType NoteProperty -Name 'Russia' -Value '2312313131'
$countrypop | Add-Member -MemberType NoteProperty -Name 'Norway' -Value '2343242'


$countrypop
$countrypop.spain

