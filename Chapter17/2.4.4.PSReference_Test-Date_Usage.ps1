$dateTime = Get-Date
Test-Date 01/01/2019 -DateTime ([Ref]$dateTime)

# Expects output:
#
# true

$dateTime

# Expects output:
#
# 01 January 2019 00:00:00