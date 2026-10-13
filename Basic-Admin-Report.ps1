Get-CimInstance -ClassName Win32_ComputerSystem |
    Select-Object Name, Manufacturer, Model, Domain

$system = Get-CimInstance -ClassName Win32_ComputerSystem
$system

$system.Name
$system.Manufacturer
$system.Model
$system.Domain

$system | Select-Object Name, Model

$system | Get-Member -MemberType Property

$system.NumberOfLogicalProcessors

$computerReport = $system |
    Select-Object Name, Manufacturer, Model, Domain, NumberOfLogicalProcessors
    $computerReport

$bios = Get-CimInstance -ClassName Win32_BIOS
$bios

$biosReport = $bios |
    Select-Object Manufacturer, SMBIOSBIOSVersion, SerialNumber
$biosReport

$reportProperties = @{
        ComputerName = $system.Name
        Manufacturer = $system.Manufacturer
        Model = $system.Model
        Domain = $system.Domain
        LogicalProcessors = $system.NumberOfLogicalProcessors
        BIOSManufacturer = $bios.Manufacturer
        BIOSVersion = $bios.SMBIOSBIOSVersion
        SerialNumber = $bios.SerialNumber
        BIOSReleaseDate = $bios.ReleaseDate
}
$reportProperties

$reportProperties['ComputerName']

$adminReport = [pscustomobject]$reportProperties
$adminReport

$adminReport | Get-Member -MemberType NoteProperty
$adminReport.ComputerName
$adminReport | Select-Object ComputerName, Model, BIOSVersion

$reportFolder = $env:USERPROFILE
$reportFolder

$adminReport | 
    Export-Csv "$reportFolder\AdminReport.csv" -NoTypeInformation

Import-Csv "$reportFolder\AdminReport.csv"

$adminReport 
Select-Object Domain, ComputerName

$bios | Get-Member -MemberType Property
$bios.ReleaseDate
