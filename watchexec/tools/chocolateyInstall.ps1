﻿$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/watchexec/watchexec/releases/download/1.10.3/watchexec-1.10.3-x86_64-pc-windows-gnu.zip'

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'ZIP'
    url64bit       = $url64

    checksum64     = 'F831908FBB0A2BE0A3A2DC10A5B2F26303FCCCB8'
    checksumType64 = 'sha1'

    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs
