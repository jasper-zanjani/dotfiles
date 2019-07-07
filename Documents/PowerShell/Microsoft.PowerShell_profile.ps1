function zgip {
  param ($VMName)
  Get-AzPublicIpAddress -Name "($VMName)-ip" | select -ExpandProperty IpAddress
}

New-Alias zicm Invoke-AzVMRunCommand
New-Alias gcr Get-Credential 