$Filetype = ".mp4"
$Basename = "World_Trigger"
$Season = "_1x"

Dir *$Filetype | ForEach-Object  -begin { $count=1 }  -process{
    Write-Output $count;
    rename-item -Path $_ -NewName $Basename$season$count$Filetype;
    $count++
    }


#Dir *$Filetype | ForEach-Object  -begin { $count=1 }  -process { Write-Output $count; rename-item $_ -NewName $Basename$season$count$Filetype; $count++ }

#Dir *$Filetype | ForEach-Object  -begin { $count=1 }  -process { Write-Output $count; Write-Output $Basename$season$count$Filetype; Write-Output $_; $count++ }