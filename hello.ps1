# Import the required namespace
Add-Type -AssemblyName System.DirectoryServices.AccountManagement

# Define the Active Directory domain and credentials
$domain = "Gruppe2.LU"
$username = "administration"
$password = "Kode1234!"

# Create a PrincipalContext object for the specified domain
$principalContext = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain), $domain

# Validate the user's credentials against Active Directory
$isAuthenticated = $principalContext.ValidateCredentials($username, $password)

if ($isAuthenticated) {
    Write-Host "Authentication successful"
    # Proceed with further actions or redirect to authorized content
} else {
    Write-Host "Authentication failed"
    # Handle failed authentication, display an error message, or redirect to a login page
}
