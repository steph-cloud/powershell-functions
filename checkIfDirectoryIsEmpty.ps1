# function to check if a directory is empty
function checkIfDirectoryIsEmpty([string]$pathDirectory) {

    # return of function : true if directory is empty, false if not empty 
    [bool]$isEmpty = $false

    # get informations about directory
    try {
        $directoryInfo = Get-ChildItem $pathDirectory -ErrorAction Stop | Measure-Object
        if ($directoryInfo.Count -eq 0) {
        # if number of files equals 0
        $isEmpty = $true
        return $isEmpty
        } else {
            # if number of files > 0
            return $isEmpty
        }
    }  catch {
        # if error return false
        return $isEmpty
    }
}