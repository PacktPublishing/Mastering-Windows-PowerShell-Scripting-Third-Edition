using namespace System.Management.Automation

class DateTimeStringTransformationAttribute : ArgumentTransformationAttribute {
    [Object] Transform(
        [EngineIntrinsics]$engineIntrinsics,
        [Object]$inputData
    ) {
        $date = Get-Date
        if ($InputData -is [String] -and
            [DateTime]::TryParseExact($inputData, 'yyyyMMddHHmmss', $null, 'None', [Ref]$date)) {

            return $date
        } elseif ($inputData -is [DateTime]) {
            return $inputData
        } else {
            throw 'Unexpected date format'
        }
    }
}