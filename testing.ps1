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
