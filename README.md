# Skrivbord

Clone this repo and copy the following script into the local powershell profile script file `C:\Users\{user}\*\PowerShell\Microsoft.PowerShell_profile.ps1`
````
$PathToScript = Resolve-Path -PATH '~/*/repos/Skrivbord/' 
Unblock-file "$($PathToScript)/Microsoft.PowerShell_profile.ps1"
. "$($PathToScript)/Microsoft.PowerShell_profile.ps1"
````
