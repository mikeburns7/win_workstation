winget install Amazon.AWSCLI
winget install -e --id Hashicorp.Terraform --location "C:\terraform"
winget install Git.git
winget install Microsoft.VisualStudioCode
winget install -e --id Python.Python.3.12 --location C:\Python312

winget upgrade --all
