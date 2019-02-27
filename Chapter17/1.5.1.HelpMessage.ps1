function Test-HelpMessage {
    param (
        [Parameter(Mandatory, HelpMessage = 'Help text for Parameter1')]
        $Parameter1
    )
}
Test-HelpMessage

# Expects output:
#
# cmdlet Test-HelpMessage at command pipeline position 1
# Supply values for the following parameters:
# (Type !? for Help.)
# Parameter1: !?
# Help text for Parameter1
# Parameter1: