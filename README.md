# Skrivbord

Clone this repo and copy the following script into the local powershell terminal 
'''
$PathToScript = Resolve-Path -PATH '~/*/repos/Skrivbord-main/' 
Unblock-file "$($PathToScript)/Microsoft.PowerShell_profile.ps1"
. "$($PathToScript)/Microsoft.PowerShell_profile.ps1"
'''
