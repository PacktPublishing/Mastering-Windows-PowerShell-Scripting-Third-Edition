[String]$thisString = "some value"
(Get-Variable thisString).Attributes

TransformNullOptionalParameters TypeId
------------------------------- -----
                           True System.Management.Automation.ArgumentTypeConverterAttribute