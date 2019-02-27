$argumentList = $null,            # Access
                $null,            # Description
                $null,            # MaximumAllowed
                'Share1',         # Name
                $null,            # Password
                'C:\Temp\Share1', # Path
                0                 # Type (Disk Drive)
Invoke-WmiMethod Win32_Share -Name Create -ArgumentList $argumentList