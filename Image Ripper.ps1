#Carl Bai
Add-Type -AssemblyName Microsoft.VisualBasic
#change these
#base url to rip from, test for fail
$url_base = Read-Host 'base working url, must start with http://'
#file type
$file_type = Read-Host 'expected file extension'
#local path to save to
$localPath_base = Read-Host 'local temp directory, recomended $home\Documents\working\'
#minimum comic to rip
$min = Read-Host 'minmum commic to rip, start at 1'
#max comic to rip, starts at $min, numbering starts 1 normally
$max = Read-Host 'max comic to rip'
#time to wait in the loop
$w = Read-Host 'wait time to avoid dns protections'

#do not touch below
#?
$object = New-Object Microsoft.VisualBasic.Devices.Network

#loop from \/ start to max \/ - i functions as image number and file name number --- can be changed to become sequential see - batch file renamer sequential.ps1
For ($i=$min; $i -lt $max; $i++)  {

#print current number
echo $i

#time stamp
echo "$(Get-Date -format o)"

#url build with current number
$url = $url_base+$i+$file_type

#path to output files with name i
$localPath = $localPath_base+$i+$file_type

#sleep for $w milisecounds
Start-Sleep -m $w

#download call to object
$object.DownloadFile($url, $localPath, ‘’, ‘’, $true, 500, $true, ‘DoNothing’)
}


#delete empty files if sequential commics have numbering gaps
get-childItem $localPath_base | where {$_.length -eq 0} | remove-Item

#open explorer to current working directory
Invoke-Item $localPath_base


#crap
#$object.DownloadFile($url, $localPath, ‘’, ‘’, $true, 500, $true, ‘DoNothing’)
#explorer.exe “/SELECT,$localPath”
#Invoke-Item -Path $localPath