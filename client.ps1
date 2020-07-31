$username = “AMETEK-AD\BHiremath”
$password = “3927@Deepa”
$credentials = New-Object System.Management.Automation.PSCredential $username,$password
$sess = New-PSSession -Credential $credentials -ComputerName 10.156.1.20
Invoke-Command -Session $sess -ScriptBlock {C:\data\server.ps1}
Exit-PSSession
Remove-PSSession $sess