# serve.ps1 — start a simple Python HTTP server and open the browser
$pwd = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
if (Get-Command py -ErrorAction SilentlyContinue) {
  Start-Process -FilePath py -ArgumentList '-3','-m','http.server','8000' -WorkingDirectory $pwd
  Start-Sleep -Seconds 1
  Start-Process 'http://localhost:8000'
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
  Start-Process -FilePath python -ArgumentList '-m','http.server','8000' -WorkingDirectory $pwd
  Start-Sleep -Seconds 1
  Start-Process 'http://localhost:8000'
} else {
  Write-Output 'Python not found. Use `py -3 -m http.server 8000` or install Python.'
}
