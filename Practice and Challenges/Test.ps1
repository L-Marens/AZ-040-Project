# PowerShell GitHub Test
# Purpose: Test creating and uploading a PowerShell script

Write-Output "Hello from PowerShell!"
Write-Output "This script was created in VS Code."
Write-Output "Testing my GitHub repository!"

$computers = @("LON-CL1", "LON-DC1", "LON-SVR1")

foreach ($computer in $computers) {
    Write-Output "Computer: $computer"
}

