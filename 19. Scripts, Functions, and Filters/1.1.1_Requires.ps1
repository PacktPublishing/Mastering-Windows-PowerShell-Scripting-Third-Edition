#Requires -RunAsAdministrator -Modules @{ ModuleName = 'TLS'; ModuleVersion = '2.0.0' }

# Expects an error if run without administrator rights:
#
# .\1.1.1_Requires.ps1 : The script '1.1.1_Requires.ps1' cannot be run because it contains a "#requires" statement for running as Administrator. The
# current Windows PowerShell session is not running as Administrator. Start Windows PowerShell by  using the Run as Administrator option, and then try
# running the script again.
# At line:1 char:1
# + .\1.1.1_Requires.ps1
# + ~~~~~~~~~~~~~~~~~~~~
#     + CategoryInfo          : PermissionDenied: (1.1.1_Requires.ps1:String) [], ScriptRequiresException
#     + FullyQualifiedErrorId : ScriptRequiresElevation
