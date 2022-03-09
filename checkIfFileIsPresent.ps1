# function to check if file is present
function checkIfFileIsPresent([string]$path,[string]$fileName) {

    # return of function : true if file is present, false if not present 
    [bool]$isPresent = $false

    try {   
        # find into the path and put result into object
        $fileToFind = Get-ChildItem -path $path $fileName -ErrorAction Stop
        # compare the result of name object convert into string with filename
        if ($fileToFind.ToString() -eq $fileName){
            $isPresent = $true
        }
    }
    catch {
        # if error return false
        return $isPresent = $false
    }
    return $isPresent
}