# function to check if ip adress is valid
function checkIfIpAdressIsValid([string]$ipAdress){
    # boolean value return : true if ip adress is valid, false, if not valid
    [boolean]$isValid = $false

    if ($ipAdress -match '^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$'){
        $isValid = $true
        return $isValid
    }
    return $isValid
}