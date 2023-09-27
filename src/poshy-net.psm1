#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


Get-ChildItem -Path "$PSScriptRoot/*.ps1" | ForEach-Object {
    . $_.FullName
    Export-ModuleMember -Function $_.BaseName
}


Set-Alias -Name ips -Value Get-NetIPAddressSimple
Set-Alias -Name myip -Value Get-NetIPAddressPublic
Set-Alias -Name ping -Value Test-Connection

Export-ModuleMember -Alias @(
    "ips",
    "myip",
    "ping"
)
