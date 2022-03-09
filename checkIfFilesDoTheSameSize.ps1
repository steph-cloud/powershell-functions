# function to check if two files do the same size
function checkIfFilesDoTheSameSize([string]$pathOrigin,[string]$pathDestination) {

    # return of function : true if files do the same size, false if they are not the same size  
    [bool]$isSame = $false

    # size of origin directory 
    $sizeOfFileOrigin = (Get-ChildItem $pathOrigin -Force | Measure-Object Length -s).sum / 1Mb
 
    # size of destination directory
    $sizeOfFileDestination = (Get-ChildItem $pathDestination -Force | Measure-Object Length -s).sum / 1Mb

    # comparison beetween the two files
    if ($sizeOfFileOrigin -eq $sizeOfFileDestination) {
        # if the files do the same size
        $isSame = $true
        return $isSame
    } else {
        # if the the files doesn't do the the same size
        $sizeOfFileOrigin
        $sizeOfFileDestination
        return $isSame
    }
}