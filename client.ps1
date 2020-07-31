$securePassword = ConvertTo-SecureString "3927@Deepa" -AsPlainText -force
$credential = New-Object System.Management.Automation.PsCredential("AMETEK-AD\BHiremath",$securePassword)
$sess = New-PSSession -Credential $cred -ComputerName 10.156.1.20
Enter-PSSession $sess
Get-Location
Exit-PSSession
Remove-PSSession $sess
