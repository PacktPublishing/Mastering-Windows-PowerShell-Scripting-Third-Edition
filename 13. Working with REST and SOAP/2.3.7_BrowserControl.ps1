using assembly PresentationFramework
using assembly .\Microsoft.Toolkit.Win32.UI.Controls\lib\net462\Microsoft.Toolkit.Win32.UI.Controls.dll

$window = [System.Windows.Window]@{
    Height = 650
    Width = 450
}
$browser = [Microsoft.Toolkit.Win32.UI.Controls.WPF.WebView]@{
    Height = 650
    Width = 450
}
# Add an event handler to close the window when
# interaction with GitHub is complete.
$browser.add_NavigationCompleted( {
    param ( $sender, $eventargs )

    if ($eventArgs.Uri -notmatch 'GitHub') {
        $Global:authorizationCode = $eventArgs.Uri -replace '^.+code='

        $sender.Parent.Close()
    } else {
        $Global:authorizationCode = $null
    }
} )
$browser.Navigate($authorize)
$window.Content = $browser
$null = $window.ShowDialog()