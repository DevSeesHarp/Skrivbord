Try {
    Import-Module -Name Terminal-Icons -ErrorAction Stop
}
Catch {
    WRITE-HOST "Could not Import Terminal-Icons Module, atempting to install... "
    Install-Module -Name Terminal-Icons -Repository PSGallery
    Import-Module -Name Terminal-Icons
}
oh-my-posh --init --shell pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression
$repos = Resolve-Path -Path "source/repos"
