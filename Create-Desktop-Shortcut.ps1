# Create-Desktop-Shortcut.ps1
# Places a "Vendor HD Portal" shortcut on the desktop that opens index.html
# in the default browser. Re-run any time to refresh it.

$projectRoot = $PSScriptRoot
$target      = Join-Path $projectRoot 'index.html'
$desktop     = [Environment]::GetFolderPath('Desktop')
$shortcut    = Join-Path $desktop 'Vendor HD Portal.lnk'

$wsh = New-Object -ComObject WScript.Shell
$lnk = $wsh.CreateShortcut($shortcut)
$lnk.TargetPath       = $target
$lnk.WorkingDirectory = $projectRoot
# Monitor/computer icon from the Windows shell library
$lnk.IconLocation     = "$env:SystemRoot\System32\shell32.dll,15"
$lnk.Description       = 'Vendor HD Portal - send equipment requests to vendors'
$lnk.Save()

Write-Host "Created shortcut at $shortcut"
