function caller {
    ConvertFrom-Json -InputObject '{{'
    child1
}
function child1 {
    'Called'
}
caller