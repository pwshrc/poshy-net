#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Get all IP addresses bound on this host.
#>
function Get-NetIPAddressSimple {
    Get-NetIPAddress @args | Select-Object -ExpandProperty IPAddress
}
