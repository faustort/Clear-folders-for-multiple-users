# Store the current execution policy
$currentExecutionPolicy = Get-ExecutionPolicy -Scope Process

# Temporarily set execution policy to bypass for the current process
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

# Define the paths to various cache folders
$cachePaths = @(
    '\AppData\Local\Microsoft\Edge\User Data\Service Worker',
    '\AppData\Local\Microsoft\Windows\Temporary Internet Files',
    '\AppData\Local\Microsoft\Windows\WebCache',
    '\AppData\Local\Microsoft\Windows\WER',
    '\AppData\Local\Microsoft\Internet Explorer\Recovery',
    '\AppData\Local\Microsoft\Terminal Server Client\Cache',
    '\AppData\Local\KVS\Enterprise Vault',
    '\AppData\Local\CrashDumps',
    '\AppData\Local\Google',
    '\AppData\Local\Temp',
    '\AppData\LocalLow\Sun\Java\Deployment\cache\6.0',
    '\AppData\Local\Microsoft\Microsoft.EnterpriseManagement.Monitoring.Console',
    '\AppData\Roaming\Code\Cache',
    '\AppData\Roaming\Code\CachedData',
    '\AppData\Roaming\Code\Code Cache',
    '\AppData\Roaming\Code\logs',
    '\AppData\Roaming\Default\Service Worker',
    '\AppData\Roaming\Default\Cache',
    '\AppData\Roaming\Default\Code Cache',
    '\Windows\SoftwareDistribution\Download',
    '\Windows\Installer\$PatchCache$',
    '\AppData\Local\Microsoft\Windows\Explorer',
    '\AppData\Local\Microsoft\Windows\Fonts',
    '\ProgramData\Microsoft\Windows\WER',
    '\AppData\Roaming\Microsoft\Office\Recent'
)

# Clearing cache for each user profile
function Clear-UserProfileCache {
    param (
        [string]$profilePath
    )

    # Retrieve the list of user profiles
    $userProfiles = Get-ChildItem -Path $profilePath

    Write-Host 'Searching for user profiles ... ' -NoNewline

    foreach ($user in $userProfiles) {
        Write-Progress -Activity 'Searching for cache folders' -Status ($user.Name).ToUpper() -PercentComplete (($userProfiles.IndexOf($user) / $userProfiles.Count) * 100)

        foreach ($path in $cachePaths) {
            $fullPath = Join-Path -Path $profilePath -ChildPath "$user\$path"

            if (Test-Path -Path $fullPath -eq $true) {
                Get-ChildItem -Path $fullPath -Recurse -Force -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
            }
        }
    }

    Write-Host ' Complete'
}

# Main script
param (
    [string]$ProfileLocation
)

Clear-Host
Write-Host 'Searching for user profiles ... ' -NoNewline

# Set the profile path based on the parameter or use the current user's profile
$profilePath = if ($ProfileLocation -ne $null) { $ProfileLocation } else { (Split-Path -Parent $env:USERPROFILE) }

# Clear cache for user profiles
Clear-UserProfileCache -profilePath $profilePath

# Display disk space difference
$before = Get-WmiObject -Class Win32_LogicalDisk -Filter "DeviceID='$($profilePath.Substring(0,2))'" | Select-Object -ExpandProperty FreeSpace
$after = Get-WmiObject -Class Win32_LogicalDisk -Filter "DeviceID='$($profilePath.Substring(0,2))'" | Select-Object -ExpandProperty FreeSpace

Write-Output "".PadLeft(80, '-')
Write-Output "Before    : $((($before / 1GB).ToString('0.00')) GB)"
Write-Output "After     : $((($after / 1GB).ToString('0.00')) GB)"
Write-Output "Difference: $((($after - $before) / 1MB).ToString('0.00')) MB"
Write-Output "".PadLeft(80, '-')

# Revert execution policy back to the original state
Set-ExecutionPolicy -ExecutionPolicy $currentExecutionPolicy -Scope Process -Force