$Secure_String_Pwd = ConvertTo-SecureString "YourPassword" -AsPlainText -Force

$Params = @{
    CreateDnsDelegation = $false
    DatabasePath = 'E:\7\NTDS'
    DomainMode = '7'
    DomainName = 'YourDomain'
    DomainNetbiosName = 'YourDomain'
    ForestMode = '7'
    InstallDns = $true
    LogPath = 'E:\Windows\NTDS'
    NoRebootOnCompletion = $true
    SafeModeAdministratorPassword = $Secure_String_Pwd
    SysvolPath = 'E:\Windows\SYSVOL'
    Force = $true
}
 
Install-ADDSForest @Params