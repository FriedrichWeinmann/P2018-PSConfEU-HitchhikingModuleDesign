@{
	# Script module or binary module file associated with this manifest
	ModuleToProcess = 'MyModule.psm1'
	
	# Version number of this module.
	ModuleVersion = '1.0.0.0'
	
	# ID used to uniquely identify this module
	GUID = 'cb3c9a1e-c293-42aa-bf22-9ddd969a5f7e'
	
	# Author of this module
	Author = 'Friedrich Weinmann'
	
	# Company or vendor of this module
	CompanyName = 'Awesome Inc.'
	
	# Copyright statement for this module
	Copyright = 'Copyright (c) 2018 Friedrich Weinmann'
	
	# Description of the functionality provided by this module
	Description = 'A default module for demo purposes'
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '5.0'
	
	# Name of the Windows PowerShell host required by this module
	# PowerShellHostName = ''
	
	# Minimum version of the Windows PowerShell host required by this module
	# PowerShellHostVersion = ''
	
	# Minimum version of the .NET Framework required by this module
	# DotNetFrameworkVersion = '2.0'
	
	# Minimum version of the common language runtime (CLR) required by this module
	# CLRVersion = '2.0.50727'
	
	# Processor architecture (None, X86, Amd64, IA64) required by this module
	# ProcessorArchitecture = 'None'
	
	# Modules that must be imported into the global environment prior to importing
	# this module
	RequiredModules = @(
		@{ ModuleName='PSFramework'; ModuleVersion='0.9.10.23' }
	)
	
	# Assemblies that must be loaded prior to importing this module
	# RequiredAssemblies = @()
	
	# Script files (.ps1) that are run in the caller's environment prior to
	# importing this module
	# ScriptsToProcess = @()
	
	# Type files (.ps1xml) to be loaded when importing this module
	# TypesToProcess = @('xml\MyModule.Types.ps1xml')
	
	# Format files (.ps1xml) to be loaded when importing this module
	# FormatsToProcess = @('xml\MyModule.Format.ps1xml')
	
	# Modules to import as nested modules of the module specified in
	# ModuleToProcess
	# NestedModules = @()
	
	# Functions to export from this module
	FunctionsToExport = ''
	
	# Cmdlets to export from this module
	CmdletsToExport = ''
	
	# Variables to export from this module
	VariablesToExport = ''
	
	# Aliases to export from this module
	AliasesToExport = ''
	
	# List of all modules packaged with this module
	ModuleList = @()
	
	# List of all files packaged with this module
	FileList = @()
	
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData = @{
		
		#Support for PowerShellGet galleries.
		PSData = @{
			
			# Tags applied to this module. These help with module discovery in online galleries.
			# Tags = @()
			
			# A URL to the license for this module.
			# LicenseUri = ''
			
			# A URL to the main website for this project.
			# ProjectUri = ''
			
			# A URL to an icon representing this module.
			# IconUri = ''
			
			# ReleaseNotes of this module
			# ReleaseNotes = ''
			
		} # End of PSData hashtable
		
	} # End of PrivateData hashtable
}