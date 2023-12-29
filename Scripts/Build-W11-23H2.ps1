Param ( 
    $VerbosePreference = "Continue",
    $ISOImage = "C:\Users\adamc\Downloads\BuilderFiles\isos\Win11-23H2.iso",
    $ConfigFilePath = "C:\Users\adamc\Downloads\BuilderFiles\windows-openstack-imaging-tools\config-W11-23H2-UEFI.ini",
    $CloudBuildModules = "C:\Users\adamc\Downloads\BuilderFiles\windows-openstack-imaging-tools"
)
Set-Location $CloudBuildModules 

Import-Module .\WinImageBuilder.psm1
Import-Module .\Config.psm1
Import-Module .\UnattendResources\ini.psm1

Mount-DiskImage -ImagePath $ISOImage
$MountLetter = (Get-DiskImage $ISOImage| Get-Volume).DriveLetter

# Example of how to set INI parameters within this PS script:
# Set-IniFileValue -Path (Resolve-Path $ConfigFilePath) -Section "DEFAULT" -Key "wim_file_path" -Value ("C:\Users\adamc\Downloads\BuilderFiles\ISOCopy\Win11-23H2\sources\install.wim")

New-WindowsOnlineImage -ConfigFilePath $ConfigFilePath

Dismount-DiskImage $ISOImage