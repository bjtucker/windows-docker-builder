Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)
    Write-Host "Unzip $zipfile to $outpath"
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Write-Host "Downloading"
wget "http://downloads.sourceforge.net/project/gnuwin32/cpuid/3.3-1/cpuid-3.3-1-bin.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fgnuwin32%2Ffiles%2Fcpuid%2F3.3-1%2Fcpuid-3.3-1-bin.zip%2Fdownload%3Fuse_mirror%3Dskylink%26download%3D&ts=1448903528&use_mirror=netix" -outfile cpuid.zip
dir

Write-Host "Calling Unzip"
Unzip cpuid.zip "."
dir

Write-Host "Calling binary"
. cpuid\bin\cpuid.exe
