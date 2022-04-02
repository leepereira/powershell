# replace operator

$variable1 = "The class instructor asked for a volunteer for a demo"
$variable2 = "Jones Tom"

$variable1 -replace "instructor", "teacher"
$replacevariable = $variable1 -replace "instructor", "teacher"

$variable2 = $variable2 -replace "([a-z]+)\s([a-z]+)", '$2, $1' #Tom, Jones
$variable2

$variable1 -replace '[^a-z]' #remove spaces


# split operator

-split "jan feb mar apr"
"jan,feb,mar,apr" -split ","
"jan,feb,mar,apr" -split ",",3

$variable444 = "jan,feb,mar,apr"
$variable444 -split ","


# .split() function
$variable555 = "jan,feb,mar,apr"
$variable555.Split(',')


$variable777 = "jan,feb,mar,apr;may;jun;july"  # when data has different delimiters
$variable777.Split(',').Split(';')

#padding string values
$variable666 = "Demo"
$variable666.PadLeft(5,'A')
$variable666.PadRight(5,'B')