# Name: L-Marens
# Challenge: 06
# Purpose: Flag local Windows services for review
# Run on: Personal Windows PC

$serviceNames = @('EventLog', 'W32Time', 'Spooler')

$reviewCount = 0

foreach ($serviceName in $serviceNames) {
    $service = Get-Service -Name $serviceName

    if ($service.Status -eq 'Running') {
        Write-Output "OK: $($service.Name)"
    }
    else {
        Write-Output "REVIEW: $($service.Name) - $($service.Status)"
        $reviewCount = $reviewCount + 1
    }
}

Write-Output "Total Services for Review: $reviewCount"
