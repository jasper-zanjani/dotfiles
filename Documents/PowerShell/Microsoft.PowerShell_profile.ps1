function zgip {
  Get-AzPublicIpAddress -Name $args[0] | select -ExpandProperty IpAddress
}

nal zicm Invoke-AzVMRunCommand
nal gcr Get-Credential

