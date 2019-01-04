using namespace System.Management.Automation

try {
    throw [ItemNotFoundException]::new('Item not found')
} catch [ItemNotFoundException] {
    Write-Host 'Item not found exception thrown'
} catch {
    Write-Host 'Error thrown'
}