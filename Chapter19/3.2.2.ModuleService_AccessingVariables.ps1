# Must import ModuleService.psm1

& (Get-Module ModuleService) { $connection }

# Expected output:
#
# DefaultConnection