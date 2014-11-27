. ".\versions.ps1"

if ($nightlyVer -eq $null) {
  $today = Get-Date -Format "yyyy.MM.dd"
  $nightlyVer = "$today"
}

Invoke-WebRequest -Uri http://packages.groonga.org/nightly/mariadb-${mariadbVer}-with-mroonga-${mroongaVer}-for-windows.${nightlyVer}.zip -OutFile source-nightly.zip