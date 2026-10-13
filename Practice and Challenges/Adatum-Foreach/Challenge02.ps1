# Name: L-Marens
# Challenge: 02
# Purpose: Build fully qualified domain names
# Run on: LON-CL1 (personal PC for practice)

$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')

$domain = 'Adatum.com'

foreach ($computer in $computers) {
    $fqdn = "$computer.$domain"
    Write-Output $fqdn
}
