Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

$path = Read-Host -Prompt "Path: ";
$word = Read-Host -Prompt "Word finding: ";

Get-ChildItem $path -Filter *.txt -Recurse | ForEach-Object {
    echo "------";
    echo $_.DirectoryName;
    echo $_.FullName
    Get-Content $_.FullName | Select-String -Pattern $word;
}

Set-ExecutionPolicy Restricted -Scope CurrentUser