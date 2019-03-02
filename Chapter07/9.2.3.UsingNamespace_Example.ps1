# Load the Windows Presentation Framework using assembly PresentationFramework # Use the System.Windows namespace using namespace System.Windows
$window = [Window]@{
    Height = 100
    Width = 150
}
# Create a System.Windows.Controls.Button object
$button = [Controls.Button]@{
    Content = 'Close'
}
$button.Add_Click( { $window.Close() } )
$window.Content = $button
$window.ShowDialog()