$hoje = (Get-Date).Date
Get-WinEvent -LogName Security | Where-Object{($_.Id -eq 4624 -or $_.Id -eq 4634) -and $_.TimeCreated.Date -eq $hoje} | Select-Object -Property TimeCreated, Id, Message