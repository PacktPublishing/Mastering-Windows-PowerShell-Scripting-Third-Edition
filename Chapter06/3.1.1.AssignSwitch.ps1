$value = 20
$units = 'TB'

$bytes = switch ($Units) {
    'TB'    { $value * 1TB }
    'GB'    { $value * 1GB }
    'MB'    { $value * 1MB }
    default { $value }
}