Get-Service |
Where-Object {
    $_.Status -eq 'Stopped' -and $_.StartType -ne 'Disabled'
} |
ForEach-Object {
    try {
        Start-Service -Name $_.Name
    } catch {}
}
