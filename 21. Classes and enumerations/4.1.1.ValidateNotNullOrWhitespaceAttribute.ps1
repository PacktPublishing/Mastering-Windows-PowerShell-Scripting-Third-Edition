using namespace System.Management.Automation

class ValidateNotNullOrWhitespaceAttribute : ValidateArgumentsAttribute {
    [Void] Validate(
        [System.Object]$arguments,
        [EngineIntrinsics]$engineIntrinsics
    ) {
        if ([String]::IsNullOrWhitespace($arguments)) {
            throw 'The value cannot be null or white space'
        }
    }
}