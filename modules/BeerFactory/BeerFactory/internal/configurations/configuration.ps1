<#
This is an example configuration file

By default, it is enough to have a single one of them,
however if you have enough configuration settings to justify having multiple copies of it,
feel totally free to split them into multiple files.
#>

<#
# Example Configuration
Set-PSFConfig -Module 'BeerFactory' -Name 'Example.Setting' -Value 10 -Initialize -Validation 'integer' -Handler { } -Description "Example configuration setting. Your module can then use the setting using 'Get-PSFConfigValue'"
#>

$paramSetPSFConfig = @{
	Module	     = 'BeerFactory'
	Name		 = 'Fridge.Size'
	Value	     = 10
	Initialize   = $true
	Validation   = 'integer'
	Description  = "The maximum capacity of the fridge"
}

Set-PSFConfig @paramSetPSFConfig