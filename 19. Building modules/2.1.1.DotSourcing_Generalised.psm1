# Replaces the content of LocalMachine.psm1

Get-ChildItem (Join-Path $psscriptroot 'private') {
    . $_.FullName
}
$functionsToExport = Get-ChildItem (Join-Path $psscriptroot 'public') {
    . $_.FullName
    $_.BaseName
}
Export-ModuleMember -Function $functionsToExport