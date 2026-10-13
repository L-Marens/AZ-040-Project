# Name: L-Marens
# Challenge: 04
# Purpose: Count all local Windows services
# Run on: LON-CL1 (personal PC for practice)

$services = @(Get-Service)

$total = 0

foreach ($service in $services) {
    Write-Output $service.Name
    $total = $total + 1
}

Write-Output "Total Services: $total"
