$params = @{
    Uri = 'https://www.nuget.org/api/v2/package/Microsoft.Toolkit.Win32.UI.Controls/4.0.2'
    OutFile = 'Microsoft.Toolkit.Win32.UI.Controls.zip'
}
Invoke-WebRequest @params
Expand-Archive Microsoft.Toolkit.Win32.UI.Controls.zip