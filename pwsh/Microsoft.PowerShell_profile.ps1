# function Set-IPAddress([bool]$originalStatus) {
#     $userAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
#     echo "Get Ip`n"
#     $response = ConvertFrom-Json $(Invoke-WebRequest -Uri "https://api.ip.sb/geoip/" -UserAgent $userAgent | Select -ExpandProperty Content)
#     echo "Done`n"
#     $POSH_IP_REGION=$response.country_code
#     $POSH_IP=$response.ip
# }
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
oh-my-posh init pwsh --config "https://raw.githubusercontent.com/preca-hoshino/dotfiles/refs/heads/main/.oh_my_posh/preca_custom.json" | Invoke-Expression
# oh-my-posh init pwsh  | Invoke-Expression
