# function to kill a process is running on remote computer
function killProcessOnRemoteComputer([string]$ipAdress,[string]$nameProcessToKill){

    # save the hosts files
    Copy-Item -path "C:\windows\system32\drivers\etc\hosts" -Destination "C:\windows\system32\drivers\etc\hosts.temp" 

    # wait during copy
    Start-Sleep -Seconds 1

    # add remote computer on windows table hosts
    $lineToAddHostsFile = "$ipAdress    remoteComputerForTransferUserDatas"
    Add-Content -path "C:\windows\system32\drivers\etc\hosts" $lineToAddHostsFile 
    # reload table hosts on windows
    nbtstat -R  | Out-Null

    # kill the process
    taskkill /s remoteComputerForTransferUserDatas /im $nameProcessToKill /f /t

    # remove temporary hosts files 
    Remove-Item -path "C:\windows\system32\drivers\etc\hosts"

    # rename correctly the hosts files 
    Rename-Item -Path "C:\windows\system32\drivers\etc\hosts.temp" -NewName "hosts"

    # reload table hosts on windows
    nbtstat -R  | Out-Null
}