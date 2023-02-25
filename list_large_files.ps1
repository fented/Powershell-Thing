$directory = Read-Host -Prompt 'Input the directory you would like to check:'
$recursive = Read-Host -Prompt 'Search through folders? (Y/N)'

if ($recursive -eq "Y") {
    Get-ChildItem -Path $directory -Recurse | Where-Object { $_.Length -gt 51200 } | ForEach-Object {
    Write-Host "File: $($_.FullName)`nSize: $($_.Length)`n"}
} else {
    Get-ChildItem -Path $directory | Where-Object { $_.Length -gt 51200 } | ForEach-Object {
    Write-Host "File: $($_.FullName)`nSize: $($_.Length)`n"}
}
