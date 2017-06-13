$someFilePath = "E:\archlinux-2016.08-1-archboot-network.iso"
$md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$hash = [System.BitConverter]::ToString($md5.ComputeHash([System.IO.File]::ReadAllBytes($someFilePath)))
echo $hash

