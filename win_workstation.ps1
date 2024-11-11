winget install Amazon.AWSCLI
winget install Hashicorp.Terraform
winget install Git.git
winget install Microsoft.VisualStudioCode
winget install -e --id Python.Python.3.12 --location C:\Python312

winget upgrade --all

# Script for batch installing Visual Studio Code extensions
# Specify extensions to be checked & installed by modifying $extensions

$extensions =
    "ms-mssql.mssql",
    "ms-vscode-remote.remote-wsl",
    "GitHub.vscode-pull-request-github"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor Gray
    } else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}
