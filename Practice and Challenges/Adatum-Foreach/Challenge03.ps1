# Name: L-Marens
# Challenge: 03
# Purpose: Inspect local Windows services
# Run on: LON-CL1 (personal PC for practice)

$serviceNames = @('EventLog', 'W32Time', 'Spooler')

foreach ($serviceName in $serviceNames) {
    $service = Get-Service -Name $serviceName
    Write-Output "$($service.Name): $($service.Status)"
}
