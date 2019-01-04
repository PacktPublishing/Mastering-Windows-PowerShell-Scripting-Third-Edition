$ErrorActionPreference = 'Stop'
try {
    Connect-Server
    Get-ManagementObject | ForEach-Object {
        try {
            $_ | Set-ManagementObject -Property 'NewValue'
        } catch {
            Write-Error -ErrorRecord $_ -ErrorAction Continue
        } finally {
            $_
        }
    }
} catch {
    throw
}