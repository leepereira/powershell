#create a basic variable
$variable1 = 1,2,3
$variable2 = "/Users/leonpereira/workspace/powershell"
$variable3 = "January 1, 2021"

# create a typed variable
[Int]$variable1 = 10

$variable3 = "January 1, 2021"
[DateTime]$variable3  #Friday, January 1, 2021 12:00:00 AM
$variable3 -as [DateTime]  #Friday, January 1, 2021 12:00:00 AM
# casting
$variable5 = "1"
$variable51 = "January 1, 2021"

#converting string variable to integer
[Int]$variable5

#converting false value to integer
[int]$false

#casting using the -AS operator
# casting string variable to integer and date
$variable1 -as [Int]
$variable2 -as [DataTime]
$false -as [Int]

#formatting data values as -F operator
$variable10 = 123.234234234
$variable11 = 9253146379

#display only 3 decimal places
"{0:n3}" -f $variable10
"{0:###-###-####}" -f $variable11
"{0:yyyy}" -f (Get-Date)
Get-Date

$variable1.GetType().Name

$num100 = 100
$num200 = 200
$num100 + $num200