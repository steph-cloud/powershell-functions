# function to check if Directory is present
function checkIfDirectoryIsPresent([string]$path) {

    # return of function : true if directory is present, false if not present 
    [bool]$isPresent = $false

    try {   
        # find into the path and put result into object
        Get-ChildItem -path $path -ErrorAction Stop | Out-Null
        $isPresent = $true
    }
    catch {
        # if error return false
        return $isPresent = $false
    }
    return $isPresent
}