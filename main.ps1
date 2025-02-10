#!/usr/bin/env pwsh

./scripts/load_python_env.ps1

$venvPythonPath = "./venv/scripts/python.exe"
if (Test-Path -Path "/usr") {
  # fallback to Linux venv path
  $venvPythonPath = "./venv/bin/python"
}

Write-Host 'Running "main.py"'

Start-Process -FilePath $venvPythonPath "main.py" -Wait -NoNewWindow