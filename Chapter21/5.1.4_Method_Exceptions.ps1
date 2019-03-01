function caller {
    [IPAddress]::Parse('this is not an IP')
    child1
}
function child1 {
    'Called'
}
caller