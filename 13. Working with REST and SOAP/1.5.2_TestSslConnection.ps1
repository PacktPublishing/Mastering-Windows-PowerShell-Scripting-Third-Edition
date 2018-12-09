$remoteCertificateValidationCallback = {
    param (
        [Object]$sender,
        [System.Security.Cryptography.X509Certificates.X509Certificate2]$certificate,
        [System.Security.Cryptography.X509Certificates.X509Chain]$chain,
        [System.Net.Security.SslPolicyErrors]$sslPolicyErrors
    )

    $psboundparameters | Export-CliXml C:\temp\CertValidation.xml
    # Always indicate SSL negotiation was successful
    $true
}

try {
    [Uri]$uri = 'https://expired.badssl.com/'

    $tcpClient = [System.Net.Sockets.TcpClient]::new()
    $tcpClient.Connect($Uri.Host, $Uri.Port)
    $sslStream = [System.Net.Security.SslStream]::new(
        $tcpClient.GetStream(),
        $false,    # leaveInnerStreamOpen: Close the inner stream when complete
        $remoteCertificateValidationCallback
    )
    $sslStream.AuthenticateAsClient($Uri.Host)
} catch {
    throw
} finally {
    if ($tcpClient.Connected) {
        $tcpClient.Close()
    }
}

$certValidation = Import-CliXml C:\temp\CertValidation.xml