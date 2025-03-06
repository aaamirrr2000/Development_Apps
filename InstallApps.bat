winget install -e --id Google.Chrome --silent
winget install -e --id Brave.Brave
winget install -e --id Microsoft.VisualStudioCode --silent
winget install -e --id Brave.Brave --silent
winget install -e --id 7zip.7zip --silent
winget install -e --id Google.GoogleDrive --silent
winget install -e --id Git.Git -e --source winget
winget install -e --id Google.GoogleDrive --silent
winget install -e --id Microsoft.VisualStudio.2022.Community
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Docker.DockerDesktop
winget install -e --id Microsoft.SQLServerManagementStudio
winget install -e --id AnyDeskSoftwareGmbH.AnyDesk
winget install -e --id 9WZDNCRFJ3NG
winget install -e --id Zoom.Zoom
winget install -e --id 9NKSQGP7F2NH
winget install -e --id 9PCKT2B7DZMW
winget install -e --id SoftDeluxe.FreeDownloadManager
winget install JanDeDobbeleer.OhMyPosh -s winget
winget upgrade JanDeDobbeleer.OhMyPosh -s winget
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
(@(& 'C:/Users/Aamir Rashid/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Aamir Rashid\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json' --print) -join "`n") | Invoke-Expression

echo Press any key to continue...
pause >nul
