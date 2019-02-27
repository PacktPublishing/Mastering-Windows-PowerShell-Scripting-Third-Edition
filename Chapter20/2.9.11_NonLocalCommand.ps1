Describe CreateDnsZone {
    BeforeAll {
        function Get-DnsServerZone { }
        function Add-DnsServerPrimaryZone { }

        Mock Get-DnsServerZone
        Mock Add-DnsServerPrimaryZone
    }

    It 'When the zone does not exist, calls Add-DnsServerPrimaryZone' {
        New-DnsZone -Name name

        Assert-MockCalled Add-DnsServerPrimaryZone
    }
}