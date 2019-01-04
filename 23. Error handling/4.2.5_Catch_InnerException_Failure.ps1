try {
    throw [InvalidOperationException]::new(
        'OuterException',
        [ArgumentException]::new(
            'IntermediateException',
            [UnauthorizedAccessException]::new('InnerException')
        )
    )
} catch [UnauthorizedAccessException] {
    'Inner'
} catch [ArgumentException] {
    'Intermediate'
} catch [InvalidOperationException] {
    'Outer'
}