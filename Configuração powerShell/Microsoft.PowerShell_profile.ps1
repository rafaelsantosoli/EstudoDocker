$MaximumHistoryCount = 20000

Import-Module posh-git
#Import-Module oh-my-posh
Import-Module PSReadLine
Import-Module Get-ChildItemColor
Import-Module Terminal-Icons
Import-Module DockerCompletion

# Set-PoshPrompt - Theme spaceship
#Set-PoshPrompt -Theme "$HOME\AppData\Local\oh-my-posh\spaceship.omp.json"
#Set-PoshPrompt -Theme "$HOME\AppData\Local\oh-my-posh\themes\1_shell.omp.json"
#Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\amron.omp.json"
###Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\atomic.omp.json"
#Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\clean-detailed.omp.json"
##Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\easy-term.omp.json"
#Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\emodipt-extend.omp.json"
##Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\multiverse-neon.omp.json"
#Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\powerlevel10k_classic.omp.json"
##Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\powerlevel10k_modern.omp.json"
#Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\powerlevel10k_rainbow.omp.json"
#Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\spaceship.omp.json"
#Set-PoshPrompt -theme "$HOME\AppData\Local\oh-my-posh\themes\atomic_custom.omp.json"

# Uses tab for autocompletion
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# History definitions
# History definitions
$HistoryFilePath = Join-Path ([Environment]::GetFolderPath('UserProfile')) .ps_history

# Register exit event to save history
Register-EngineEvent PowerShell.Exiting -Action { 
    Get-History | Export-Clixml $HistoryFilePath 
} | out-null

# Import history if file exists and is not empty
if ((Test-Path $HistoryFilePath) -and (Get-Item $HistoryFilePath).Length -gt 0) {
    try {
        Import-Clixml $HistoryFilePath | Add-History
    }
    catch {
        Write-Warning "Não foi possível importar o histórico: $_"
    }
}

Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

# Aliases
Set-Alias which Get-Command
Set-Alias open Invoke-Item

function ll() { Get-ChildItem | Format-Table }
function la() { Get-ChildItem | Format-Wide }
function lb() { Get-ChildItem | Format-List }

Set-Alias ls la
Set-Alias l lb

# Aliases Functions
function cdd() { Set-Location "D:\Downloads" } # Change Directory Downloads
function cdp() { Set-Location "D:\Desenvolvimento\Projetos" } # Change Directory Projetos

function opd() { open "D:\Downloads" } # Open Downloads
function opp() { open "D:\Desenvolvimento\Projetos" } # Open Projetos

function edp() { code $PROFILE } # Edit Profile
function edh() { code "$HOME\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" } # Edit History
function eds() { code "$HOME\AppData\Local\oh-my-posh\spaceship.omp.json" } # Edit Spaceship Theme

# restaurar bancos de dados
function p2210() { open "C:\Users\rafae\Desktop\Protheus\2210"}
function p2310() { open "C:\Users\rafae\Desktop\Protheus\2310"}
function p2410() { open "C:\Users\rafae\Desktop\Protheus\2410"}
function rpo2410() { open "C:\Users\rafae\Desktop\Protheus\2410\atu_rpo_atual_2410 _robo.bat"}
function sql2410() { open "C:\Users\rafae\Desktop\Protheus\2410\Base_Congelada_2410.bat"}
function rb12410() { open "C:\Users\rafae\Desktop\Protheus\2410\Restaura banco_1.bat"}
function rb22410() { open "C:\Users\rafae\Desktop\Protheus\2410\Restaura banco_1.bat"}
function rb32410() { open "C:\Users\rafae\Desktop\Protheus\2410\Restaura banco_1.bat"}

# Compute file hashes - useful for checking successful downloads
function md5    { Get-FileHash -Algorithm MD5 $args } # Get-FileHash -Algorithm MD5 -Path $args - Exemplo: md5 .\file.txt
function sha1   { Get-FileHash -Algorithm SHA1 $args } # Get-FileHash -Algorithm SHA1 -Path $args
function sha256 { Get-FileHash -Algorithm SHA256 $args } # Get-FileHash -Algorithm SHA256 -Path $args

function tail { Get-Content $args -Tail 30 -Wait } # Get-Content $args -Tail 30 -Wait

function take {
  New-Item -ItemType directory $args
  Set-Location "$args"
}
##oh-my-posh init pwsh | Invoke-Expression

oh-my-posh init pwsh --config "$HOME\AppData\Local\oh-my-posh\themes\atomic_custom.omp.json" | Invoke-Expression