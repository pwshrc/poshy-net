#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Outputs the public IP address of the current machine.
.NOTES
    This function uses the DNS-O-Matic service to determine the public IP address of the current machine.
    See https://www.dnsomatic.com/wiki/api for more information.
#>
function Get-NetIPAddressPublic {
    # note: could also try "http://checkip.dyndns.com/" or "http://checkip.dyndns.org/"
    Invoke-RestMethod "http://myip.dnsomatic.com/"
}
