Set-Content -Path $profile.CurrentUserCurrentHost -Value @'
$presentationRoot = "D:\Code\Github\P2018-PSConfEU-HitchhikingModuleDesign"

Add-Type -Path "C:\Users\Friedrich\Documents\WindowsPowerShell\Modules\dbatools\0.9.310\bin\dbatools.dll"
$temp = Get-PSFConfigValue -FullName psutil.path.temp
$null = New-Item -Path $temp -Name demo -ItemType Directory -Force -ErrorAction Ignore
$demo = Get-Item "$temp\demo"
$null = New-PSDrive -PSProvider FileSystem -Name demo -Root $demo.FullName -ErrorAction Ignore
Set-Location demo:
function Prompt
{
    $string = ""
    try
    {
        $history = Get-History -ErrorAction Ignore
        if ($history)
        {
            $string = "[<c='red'>$([Sqlcollaborative.Dbatools.Utility.DbaTimeSpanPretty]($history[-1].EndExecutionTime - $history[-1].StartExecutionTime))</c>] "
        }
    }
    catch { }
    Write-PSFHostColor -String "$($string)Demo:" -NoNewLine
    
    "> "
}

Import-Module PSUtil
Import-Module "$presentationRoot\modules\BeerFactory\BeerFactory\BeerFactory.psd1"

$PSDefaultParameterValues["Invoke-PSMDTemplate:OutPath"] = "$presentationRoot\powershell"
$PSDefaultParameterValues["Invoke-PSMDTemplate:Parameters"] = @{
    Name = "MyModule"
    Description = "A default module for demo purposes"
}
Remove-Item -Path "$presentationRoot\PowerShell\MyModule" -Recurse -Force -ErrorAction Ignore
'@

$presentationRoot = "D:\Code\Github\P2018-PSConfEU-HitchhikingModuleDesign"

Add-Type -Path "C:\Users\Friedrich\Documents\WindowsPowerShell\Modules\dbatools\0.9.310\bin\dbatools.dll"
$temp = Get-PSFConfigValue -FullName psutil.path.temp
$null = New-Item -Path $temp -Name demo -ItemType Directory -Force -ErrorAction Ignore
$demo = Get-Item "$temp\demo"
$null = New-PSDrive -PSProvider FileSystem -Name demo -Root $demo.FullName -ErrorAction Ignore
Set-Location demo:
function Prompt
{
    $string = ""
    try
    {
        $history = Get-History -ErrorAction Ignore
        if ($history)
        {
            $string = "[<c='red'>$([Sqlcollaborative.Dbatools.Utility.DbaTimeSpanPretty]($history[-1].EndExecutionTime - $history[-1].StartExecutionTime))</c>] "
        }
    }
    catch { }
    Write-PSFHostColor -String "$($string)Demo:" -NoNewLine
    
    "> "
}

Import-Module PSUtil
Import-Module "$presentationRoot\modules\BeerFactory\BeerFactory\BeerFactory.psd1"
$PSDefaultParameterValues["Invoke-PSMDTemplate:OutPath"] = "$presentationRoot\powershell"
$PSDefaultParameterValues["Invoke-PSMDTemplate:Parameters"] = @{
    Name = "MyModule"
    Description = "A default module for demo purposes"
}
Remove-Item -Path "$presentationRoot\PowerShell\MyModule" -Recurse -Force -ErrorAction Ignore