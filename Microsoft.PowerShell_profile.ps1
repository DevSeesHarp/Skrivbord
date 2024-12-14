Try {
    if ((winget list --id Microsoft.PowerShell.Preview | Select-String '\bVersion\s+Available\b' -Quiet)) {
        WRITE-HOST "Upgrading PowerShell to latest version"
        winget upgrade --id Microsoft.PowerShell.Preview
    }
}
Catch {
    WRITE-HOST "could not upgrade powershell!"
}
Try {
    Import-Module -Name Terminal-Icons -ErrorAction Stop
}
Catch {
    WRITE-HOST "Could not Import Terminal-Icons Module, atempting to install... "
    Install-Module -Name Terminal-Icons -Repository PSGallery
    Import-Module -Name Terminal-Icons
}
oh-my-posh --init --shell pwsh --config "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\theme.omp.json" | Invoke-Expression

$repos = Resolve-Path -PATH "$($env:USERPROFILE)\source\repos"