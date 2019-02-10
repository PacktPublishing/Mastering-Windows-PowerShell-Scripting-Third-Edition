$value = [Int64][System.Security.AccessControl.FileSystemRights]::Modify
$i = 0
do {
    if ($bit = $value -band 1 -shl $i++) {
         [System.Security.AccessControl.FileSystemRights]$bit
    }
} until (1 -shl $i -ge $value)