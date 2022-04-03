function merge ($target, $source) {
  write-host "Running merge"
  if (($source)) {
    $source.psobject.Properties | ForEach-Object {
      if ($_.TypeNameOfValue -eq 'System.Management.Automation.PSCustomObject' -and $target."$($_.Name) " ) {
        merge $target."$($_.Name) " $_.Value
      }
      else {
        $target | Add-Member -MemberType $_.MemberType -Name $_.Name -Value $_.Value -Force
      }
    }
  }
}



PS /Users/le6u1v0/workspace/non-GAPINC/ADO_Explained/scratch_area> $clusterparam.GetType()


IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     False    PSCustomObject                           System.Object
