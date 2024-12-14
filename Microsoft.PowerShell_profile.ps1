Try {
    Import-Module -Name Terminal-Icons -ErrorAction Stop
}
Catch {
    WRITE-HOST "Could not Import Terminal-Icons Module, atempting to install... "
    Install-Module -Name Terminal-Icons -Repository PSGallery
    Import-Module -Name Terminal-Icons
}
oh-my-posh --init --shell pwsh --config "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\theme.omp.json" | Invoke-Expression

$repos = Resolve-Path -PATH "$($env:USERPROFILE)\source\repos" -ErrorAction SilentlyContinue