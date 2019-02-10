class ValidatePrivateIPAddressAttribute : ValidateEnumeratedArgumentsAttribute {
    Hidden $ipAddress = [IPAddress]::Empty

    Hidden [Boolean] IsValidIPAddress([String]$value) {
        return [IPAddress]::TryParse($value, [Ref]$this.ipAddress)
    }

    Hidden [Boolean] IsPrivateIPAddress([IPAddress]$address) {
        $bytes = $address.GetAddressBytes()
        $isPrivateIPAddress = switch ($null) {
            { $bytes[0] -eq 192 -and
              $bytes[1] -eq 168 } { $true; break }
            { $bytes[0] -eq 172 -and
              $bytes[1] -ge 16 -and
              $bytes[2] -le 31 } { $true; break }
            { $bytes[0] -eq 10 } { $true; break }
            default { $false }
        }
        return $isPrivateIPAddress
    }

    [Void] ValidateElement([Object]$element) {
        if (-not $element -is [IPAddress]) {
            if ($this.IsValidIPAddress($element)) {
                $element = $this.ipAddress
            } else {
                throw '{0} is an invalid IP address format' -f $element
            }
        }
        if (-not $this.IsPrivateIPAddress($element)) {
            throw '{0} is not a private IP address' -f $element
        }
    }
}