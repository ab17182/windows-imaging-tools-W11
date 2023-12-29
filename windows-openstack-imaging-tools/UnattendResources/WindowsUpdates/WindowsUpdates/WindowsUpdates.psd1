# Copyright 2016 Cloudbase Solutions Srl
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.
#
# Module manifest for module 'WindowsUpdates'
#
# Generated by: Adrian Vladu
#
# Generated on: 01/03/2016
#

@{

# Script module or binary module file associated with this manifest.
NestedModules = 'WindowsUpdates.psm1'

# Version number of this module.
ModuleVersion = '0.1'

# ID used to uniquely identify this module
GUID = 'f0438e9b-e3a5-406f-856a-02fa047250d5'

# Author of this module
Author = 'Adrian Vladu'

# Company or vendor of this module
CompanyName = 'Cloudbase Solutions SRL'

# Copyright statement for this module
Copyright = '(c) 2016 Cloudbase Solutions SRL. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PowerShell Module for automated Windows Updates Management'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '2.0'

# Functions to export from this module
FunctionsToExport = @(
    "Get-WindowsUpdate",
    "Get-RebootRequired",
    "Install-WindowsUpdate"
    )
# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

}
