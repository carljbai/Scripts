Get-ChildItem -force -Path "E:\Bin\custom_data\New folder\Comic and atrists" -Recurse -Filter ._* | remove-item -force
Get-ChildItem -force -Path "E:\Bin\custom_data\New folder\Comic and atrists" -Recurse -Filter ._.* | remove-item -force
Get-ChildItem -force -Path "E:\Bin\custom_data\New folder\Comic and atrists" -Recurse -Filter .DS_Store | remove-item -force