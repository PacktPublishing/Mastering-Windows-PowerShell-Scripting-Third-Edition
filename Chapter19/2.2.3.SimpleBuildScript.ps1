$configuration = @{
    ModuleName     = Split-Path $psscriptroot -Leaf
    FoldersToMerge = @(
        'enum*'
        'class*'
        'private*'
        'public*'
    )
    FilesToCopy    = '*.ps1xml', '*.psd1'
    FilesToExclude = 'build.psd1'
}

try {
    $ErrorActionPreference = 'SilentlyContinue'

    if (Test-Path 'output') {
        Remove-Item 'output' -Recurse -Force
    }
    $outputPath = New-Item 'output' -ItemType Directory

    Push-Location (Join-Path $psscriptroot $configuration.ModuleName) -StackName build

    Get-ChildItem $configuration.FilesToCopy -Exclude $configuration.FilesToExclude |
        Copy-Item -Destination $outputPath -Verbose

    Get-ChildItem $configuration.FoldersToMerge -Directory |
        Get-ChildItem -Filter *.ps1 -File -Recurse |
        Get-Content -Raw |
        ForEach-Object {
            $_.Trim()
            ''
        } |
        Add-Content ('{0}\{1}.psm1' -f $outputPath, $configuration.ModuleName)
} finally {
    Pop-Location -StackName build
}