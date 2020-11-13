$ACL = Get-Acl -Path "*"
$User = New-Object System.Security.Principal.NTAccount("UTLUSR")
$ACL.SetOwner($User)
$ACL | Set-Acl -Path "*"
Get-Acl -Path "*" -AllCentralAccessPolicies | Format-Custom * -Force | Out-File .\Users\UTLUSR\CAPTIVE_DEV\POWERSHELL_REFINED\COPYING_ACL_PERMISSIONS_OUTPUT.LOG  -Append ascii -Force