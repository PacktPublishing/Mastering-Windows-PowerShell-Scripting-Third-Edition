Get-Process -Id $PID | Get-Member -MemberType PropertySet

# Expects output:
#
#     TypeName: System.Diagnostics.Process

# Name               MemberType     Definition
# ----               ----------     ----------
# PSConfiguration    PropertySet    PSConfiguration {Name, Id, ...
# PSResources        PropertySet    PSResources {Name, Id, Hand...

Get-Process -Id $PID | Select-Object PSConfiguration

# Name                Id    PriorityClass    FileVersion
# ----                --    -------------    -----------
# powershell_ise    5568           Normal    10.0.14393.103 (rs1_release_inmarket.160819-1924)