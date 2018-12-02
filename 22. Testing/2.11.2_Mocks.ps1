Describe Set-ComputerDescription {
    BeforeAll {
        Mock Set-ItemProperty
        Mock Clear-ItemProperty
        Mock Remove-ItemProperty
    }
}