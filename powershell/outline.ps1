#Failsafe
break

# Content Brainfart
<#
Module Identity
- Entity / Component / Resource model
- Ensure visibility

Documentation [Demo]
- Concept Help "about_<modulename>" :
-- Explains purpose of module
-- Explains basic usage
-- Explains where to get more information
- Channels
-- Youtube
-- Website
--- Github Sites

Prefix
- Needs to have one to reduce conflicts (Get-User)
- Needs to be short to not be a pain
- DefaultPrefix is nice in theory, but not for practical deployment
-- Rarely used by users
-- Requires explicit import

Command naming
- Select by logical operation from user perspective, not technical/internal functionality
-- Add-AzureRmAccount vs. Connect-AzureRm(Account)
- Choosing Verbs
-- Should reflect action taken
-- Use approved verbs (Get-Verb)
-- Get/Set/New/Remove should usually come in a group (Avoid Update within those)
- Choosing Nouns
-- Avoid 'German' naming: IntelNetAdapterMaximumBandwidthPercentage is too long.
-- Should be singular
-- Should include the object worked with
-- Should be intuitive from the user perspective
- The big advice
-- Ask someone familiar with the technology the module manages but unfamiliar with the module to search for the command

TabCompletion [Demo]
- Get-Beer -Beer Parameter

Configuration [Demo]
- Avoid hardtyping settings - provide sane defaults, offer options to change them.
-- In-Memory configuration
-- File-Based configuration
-- PSFConfig

Pipeline Design
- Accept output from Get-Commands
-- Example: C# Types
-- Example: Bind by property name
-- Example: Object
--- PSCustomObject with PSTypeName
--- Adding / Changing typenames
- PassThru parameter
- Intentionally do not support pipeline

Clean Up behind you [Demo]
- Release resources on removal / exit
- Clean up temporary files no longer needed

Performance / The need for speed
- Import time
- Execution time

Things that get puppies killed
- Overwriting user prompt
- Force-messing with user preference
- Intentionally overwriting resources from other modules*
--> Be polite to other modules and the end user
#>

<#
# Order
1) Identity
2) Documentation
3) Prefix
4) TabCompletion
5) Command naming
6) Configuration
7) No Littering
8) Pipeline Design
9) Things that get puppies killed
10) The need for speed
#>

#TODO: Add configuration option: FridgeCapacity