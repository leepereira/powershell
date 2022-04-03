# throw
# write-Error
#-ErrorAction
#try/catch
#try/finally
#try/catch/finally

#generate an error using "throw"

# function New-Error  {
#     $num = 0;
#     for ($i = 1; $i -le 10; $i++) {
#         Write-Host "the current number is $i"
#         throw "This is an error"
#         $num = $num + $i
#     }
# }

# New-Error #this function call throws an error

#use Write-Error with -ErrorAction to generate error
# Write-Error -Message "This is am Error" -ErrorAction Stop #this is stop from executing further (Continue/Stop/SilentlyContinue/Ignore)

function New-Error  {
    $num = 0;
    for ($i = 1; $i -le 10; $i++) {
        Write-Host "the current number is $i"
        Write-Error -Message "Error" -ErrorAction SilentlyContinue
        $num = $num + $i
    }
}

New-Error

# PS /Users/leonpereira/workspace/powershell> $Error = throw "Error"
    
# Exception: Error
# PS /Users/leonpereira/workspace/powershell> $Error.               
# Capacity        IsSynchronized  BinarySearch    CopyTo          GetRange        InsertRange     RemoveRange     ToArray         Where           
# Count           SyncRoot        Clear           Equals          GetType         LastIndexOf     Reverse         ToString        ForEach         
# IsFixedSize     Add             Clone           GetEnumerator   IndexOf         Remove          SetRange        TrimToSize      
# IsReadOnly      AddRange        Contains        GetHashCode     Insert          RemoveAt        Sort            Item            
# PS /Users/leonpereira/workspace/powershell> $Error.
