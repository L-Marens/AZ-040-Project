# Name: L-Marens
# Challenge: 05
# Purpose: Retrieve computer information from Active Directory
# Run on: Personal Windows PC (requires Adatum domain access)

Import-Module ActiveDirectory

$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')

foreach ($computer in $computers) {
    $adComputer = Get-ADComputer -Identity $computer -Server 'LON-DC1.Adatum.com' -Properties OperatingSystem

    Write-Output "Name: $($adComputer.Name)"
    Write-Output "DNS Hostname: $($adComputer.DNSHostName)"
    Write-Output "Operating System: $($adComputer.OperatingSystem)"
    Write-Output "------------------------------"
}
