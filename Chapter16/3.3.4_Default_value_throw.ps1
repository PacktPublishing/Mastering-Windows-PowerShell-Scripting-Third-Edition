# Will not run in the console as-is. Needs to be in a .ps1 file, or wrapped by function.
param (
    [String]$Parameter1 = (throw 'This parameter is mandatory')
)