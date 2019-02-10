using namespace System.Management.Automation

class DateTimeStringTransformationAttribute : ArgumentTransformationAttribute {
    Hidden [DateTime] $date = (Get-Date)

    Hidden [Boolean] tryParseExact([String]$value) {
        return [DateTime]::TryParseExact(
            $value,
            'yyyyMMddHHmmss',
            $null,
            'None',
            [Ref]$this.date
        )
    }

    [Object] Transform(
        [EngineIntrinsics]$engineIntrinsics,
        [Object]$inputData
    ) {
        if ($inputData -is [String] -and $this.TryParseExact($inputData)) {
            return $this.date
        } elseif ($inputData -is [DateTime]) {
            return $inputData
        } else {
            throw 'Unexpected date format'
        }
    }
}