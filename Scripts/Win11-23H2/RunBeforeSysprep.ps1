function Write-Log {
    Param($messageToOut)
    add-content -path "c:\build.log" ("{0} - {1}" -f @((Get-Date), $messageToOut))
}

Write-Log "RunBeforeSysprep.ps1 starting"

write-Log "Allow RDP"
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name 'fDenyTSConnections' -value 0
Enable-NetFirewallRule -DisplayGroup 'Remote Desktop'

write-Log  "Allow All RDP clients"
(Get-WmiObject -class 'Win32_TSGeneralSetting' -Namespace root\cimv2\terminalservices -ComputerName $env:COMPUTERNAME -Filter 'TerminalName="RDP-tcp"').SetUserAuthenticationRequired(0)

write-Log  "Installing Microsoft Office 365"
C:\UnattendResources\CustomResources\M365-setup\setup.exe /configure C:\UnattendResources\CustomResources\M365-setup\configuration-Office365-x86.xml

Write-Log "RunBeforeSysprep.ps1 Finished"