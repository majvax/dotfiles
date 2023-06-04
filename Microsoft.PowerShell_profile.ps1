Import-Module Terminal-Icons
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\zash.omp.json" | Invoke-Expression



if (!(Get-Process -Name komorebi -ErrorAction SilentlyContinue)) { komorebic start -a }
