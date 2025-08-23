chcp 65001
clear
function Set-IPAddress([bool]$originalStatus) {
    $userAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
    echo "Get Ip`n"
    $response = ConvertFrom-Json $(Invoke-WebRequest -Uri "https://api.ip.sb/geoip/" -UserAgent $userAgent | Select -ExpandProperty Content)
    echo "Done`n"
    $POSH_IP_REGION=$response.country_code
    $POSH_IP=$response.ip
}
# New-Alias -Name 'Set-PoshContext' -Value 'Set-IPAddress' -Scope Global -Force
Import-Module -Name Terminal-Icons
Import-Module DirColors
# Import-Module posh-git
# Import-Module PSReadLine
# Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -HistorySearchCursorMovesToEnd
# Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete
# Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
# Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# Set-IPAddress
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/catppuccin_frappe.custom.json" | Invoke-Expression
# oh-my-posh init pwsh  | Invoke-Expression

#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module

Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58
