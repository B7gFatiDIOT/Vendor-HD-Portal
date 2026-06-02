# Create-Desktop-Shortcut.ps1
# Places a "Vendor HD Portal" shortcut on the desktop that opens the LIVE site
# in the default browser. Re-run any time to refresh it.

$liveUrl  = 'https://b7gfatidiot.github.io/Vendor-HD-Portal/'
$desktop  = [Environment]::GetFolderPath('Desktop')
$urlFile  = Join-Path $desktop 'Vendor HD Portal.url'
$oldLnk   = Join-Path $desktop 'Vendor HD Portal.lnk'

# Remove the previous local-file shortcut if it exists
if (Test-Path $oldLnk) { Remove-Item $oldLnk -Force }

# Internet shortcut -> opens the hosted site in the default browser
@"
[InternetShortcut]
URL=$liveUrl
IconFile=$env:SystemRoot\System32\shell32.dll
IconIndex=15
"@ | Set-Content -Path $urlFile -Encoding ASCII

Write-Host "Created shortcut at $urlFile"
Write-Host "  -> $liveUrl"
