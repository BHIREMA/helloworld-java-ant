$securePassword = ConvertTo-SecureString "3927@Deepa" -AsPlainText -force
$credential = New-Object System.Management.Automation.PsCredential("AMETEK-AD\BHiremath",$securePassword)
$sess = New-PSSession -Credential $credential -ComputerName 10.156.1.20
Invoke-Command -Session $sess -ScriptBlock {C:\data\server.ps1 –PassThru}
Exit-PSSession
Remove-PSSession $sess