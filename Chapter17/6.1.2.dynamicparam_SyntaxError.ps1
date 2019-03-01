function Test-DynamicParam {
    [CmdletBinding()]
    param ( )
    dynamicparam { }
    Write-Host 'Function body'
}

# Expects error:
#
# At line:1 char:28
# + function Test-DynamicParam {
# + ~
# Missing closing '}' in statement block or type definition.
# At line:4 char:1
# + }
# + ~
# Unexpected token '}' in expression or statement.
#     + CategoryInfo : ParserError: (:) [], ParentContainsErrorRecordException
#     + FullyQualifiedErrorId : MissingEndCurlyBrace