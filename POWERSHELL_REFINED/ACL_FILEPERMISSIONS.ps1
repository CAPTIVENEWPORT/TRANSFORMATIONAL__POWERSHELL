﻿$ACL = GET-ACL -Path "*"
$AccessRule = New-Object System.SecuritY.AccessControl.FileSystemAccessRule("UTLUSR","FULLCONTROL","ALLOW")
$ACL.SetAccessRule($AccessRule)
$AccessRule | Set-Acl -Path "*"
(Get-Acl -Path ".\ACL_TEST.TXT").Access | Format-Custom *,IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -Force
