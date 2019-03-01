function Set-ManagementObject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        $InputObject,

        $Property
    )

    process {
        $InputObject.Property = $Property
    }
}