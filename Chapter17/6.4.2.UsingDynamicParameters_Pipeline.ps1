using namespace System.Management.Automation

function Test-DynamicParam {
    [CmdletBinding()]
    param ( )

    dynamicparam {
        $paramDictionary = [RuntimeDefinedParameterDictionary]::new()

        $parameter = [RuntimeDefinedParameter]::new('InputObject', [String], [Attribute[]]@(
                [Parameter]@{ Mandatory = $true; ValueFromPipeline = $true }
            )
        )
        $paramDictionary.Add($parameter.Name, $parameter)

        $paramDictionary
    }

    begin {
        'BEGIN: Input object is present: {0}' -f @(
            $psboundparameters.ContainsKey('InputObject')
        )
    }

    process {
        'PROCESS: Input object is present: {0}; Value: {1}' -f @(
            $psboundparameters.ContainsKey('InputObject')
            $psboundparameters['InputObject']
        )
    }

    end {
        'END: Input object is present: {0}; Value: {1}' -f @(
            $psboundparameters.ContainsKey('InputObject')
            $psboundparameters['InputObject']
        )
    }
}