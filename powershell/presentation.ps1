# Failsafe
break






 #----------------------------------------------------------------------------# 
 #                              2) Documentation                              # 
 #----------------------------------------------------------------------------# 

# Concept Help
Invoke-PSMDTemplate -TemplateName PSFModule


# Github Pages #
# -------------#
explorer "$presentationroot\..\PowershellFrameworkCollective.github.io"

code "$presentationroot\..\PowershellFrameworkCollective.github.io\index.md"
# http://psframework.org

# Videos
# https://youtu.be/8WkHaH20OEE

# Back to PowerPoint


 #----------------------------------------------------------------------------# 
 #                             4) Tab Completion                              # 
 #----------------------------------------------------------------------------# 

# Validate Set & Enumerations #
#-----------------------------#

function Get-Alcohol {
    [CmdletBinding()]
    Param (
        [ValidateSet('Pint','Mug','Maßkrug')]`
        $Size
    )
}

# Demo it

Import-Module "$presentationRoot\modules\BeerFactory\BeerFactory\BeerFactory.psd1"
Get-Beer

# Demo New-Beer -Container

code "$presentationRoot\modules\BeerFactory\BeerFactory\functions\New-Beer.ps1"
code "$presentationRoot\modules\BeerFactory\library\BeerFactory\BeerFactory\Container.cs"

# Custom Tab Completion #
#-----------------------#

Register-PSFTeppScriptblock -Name BeerFactory.Brand -ScriptBlock {
    $module = Get-Module BeerFactory
    & $module { $beerList.Brand | Select-Object -Unique }
}
Register-PSFTeppArgumentCompleter -Command Get-Beer -Parameter Brand -Name BeerFactory.Brand

New-Beer -Brand Hofbräu -Type Pils
New-Beer -Brand Hofbräu
New-Beer -Brand Heineken -Type Helles -Container Horn

# Demo it

# Back to PowerPoint

 #----------------------------------------------------------------------------# 
 #                              6) Configuration                              # 
 #----------------------------------------------------------------------------# 

 # Memory based
$script:Config = @{}

function Set-Config {
    [CmdletBinding()]
    param (
        $Name,
        $Value
    )
    $script:Config[$Name] = $Value
}
function Get-Config {
    [CmdletBinding()]
    param (
        $Name
    )
    $script:Config[$Name]
}
Set-Config -Name BeerExpiration -Value 2
Get-Config -Name BeerExpiration

# File based

# Joel Bennet's Configuration Module
# Install-Module Configuration

# PSFramework: Configuration Component
$paramSetPSFConfig = @{
	Module	     = 'BeerFactory'
	Name		 = 'Fridge.Size'
	Value	     = 10
	Initialize   = $true
	Validation   = 'integer'
	Description  = "The maximum capacity of the fridge"
}
Set-PSFConfig @paramSetPSFConfig
Get-PSFConfig -Module BeerFactory -Name Fridge.Size
Get-PSFConfigValue -FullName BeerFactory.Fridge.Size
Set-PSFConfig -Module BeerFactory -Name Fridge.Size -Value 3
New-Beer -Brand Becks

# Back to PowerPoint

 #----------------------------------------------------------------------------# 
 #                              7) No Literring                               # 
 #----------------------------------------------------------------------------# 

$OnRemoveScript = {
    # perform cleanup
    $cachedSessions | Remove-PSSession
}
$ExecutionContext.SessionState.Module.OnRemove += $OnRemoveScript

$paramRegisterEngineEvent = @{
	SourceIdentifier  = ([System.Management.Automation.PsEngineEvent]::Exiting)
	Action		      = $OnRemoveScript
}
Register-EngineEvent @paramRegisterEngineEvent

# Back to PowerPoint

 #----------------------------------------------------------------------------# 
 #                             8) Pipeline Design                             # 
 #----------------------------------------------------------------------------# 

# Pipeline and parameters
Get-Beer | Select-Object -First 1 | Drink-Beer
code "$presentationRoot\modules\BeerFactory\BeerFactory\functions\Remove-Beer.ps1"

# PassThru
Get-Beer | Set-Beer -NewContainer Barrel -PassThru
code "$presentationRoot\modules\BeerFactory\BeerFactory\functions\Set-Beer.ps1"

# Back to PowerPoint


 #----------------------------------------------------------------------------# 
 #                           10) The Need for Speed                           # 
 #----------------------------------------------------------------------------# 

# Opt-In dotsourcing
code "$presentationRoot\modules\BeerFactory\BeerFactory\BeerFactory.psm1"