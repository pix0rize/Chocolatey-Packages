$ErrorActionPreference = 'Stop'
$packageName   = 'forticlient70'
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'http://www.romeropolo.com/vpn/FortiClientVPNOnlineInstaller.exe'
$checksum      = '51c5bd277d73ff062ad4a083fa6cd9a718748caa18659900b17f1255cbff508e'
$url64         = 'http://www.romeropolo.com/vpn/FortiClientVPNOnlineInstaller.exe'
$checksum64    = '51c5bd277d73ff062ad4a083fa6cd9a718748caa18659900b17f1255cbff508e'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64         = $url64
  silentArgs    = '/QUIET /NORESTART'
  softwareName  = 'VPN FortiClient' 
  checksum      = $checksum
  checksum64    = $checksum64
  checksumType  = 'sha256'
  }

Install-ChocolateyPackage @packageArgs
