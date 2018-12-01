function Write-File {
    $fileStream = New-Object System.IO.FileStream(
        "C:\Temp\test.txt",
        'OpenOrCreate'
    )
    $streamWriter = New-Object System.IO.StreamWriter($fileStream)
    $streamWriter.WriteLine("Hello world")
    $streamWriter.Close()
}