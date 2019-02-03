using namespace System.Management.Automation

function Test-DynamicParam {
    [CmdletBinding()]
    param ( )

    dynamicparam {
        $paramDictionary = [RuntimeDefinedParameterDictionary]::new()

        $parameter = [RuntimeDefinedParameter]::new('Action', [String], [Attribute[]]@(
                [Parameter]@{ Mandatory = $true; Position = 1 }
                [ValidateSet]::new('Start', 'Stop', 'Create', 'Delete')
            )
        )
        $paramDictionary.Add($parameter.Name, $parameter)

        $paramDictionary
    }
}