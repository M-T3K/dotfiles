
# Copy glazewm config files

param(
    [string] $Source = "$env:UserProfile\.glzr",
    [string] $Destination = (Join-Path (Get-Location) "windows")
)

# Ensure the destination "windows" folder exists (create if missing)
if (-not (Test-Path $Destination)) {
    New-Item -ItemType Directory -Path $Destination | Out-Null
}

Copy-Item -Path (Join-Path $Source '*') `
          -Destination $Destination `
          -Recurse `
          -Force
