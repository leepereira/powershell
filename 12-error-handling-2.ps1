Function New-Error
{
    Throw "This is an error"
}


#try/catch
#try a section of code and if it throws an error,catch it


try {
    New-Error
}
catch {
    Write-Output "An Exceptioin was Generated"
}

#try/finally
#dont handle the error, simply execute code  if an exception occurs

try {
    New-Mesage
}
finally {
    Write-Output "Continue Execution"
}

#try/catch/finally
#Combination of both throwing errors and executing code

try {
    New-Message
}
catch {
    Write-Output "An Exception was Generated"
}
finally {
    Write-Output "Continue Execution"
}
