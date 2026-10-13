# Name: L-Marens
# Challenge: 01
# Purpose: List the Adatum lab computers
# Run on: LON-CL1

$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')

foreach ($computer in $computers) {
    Write-Output "Computer: $computer"
}
