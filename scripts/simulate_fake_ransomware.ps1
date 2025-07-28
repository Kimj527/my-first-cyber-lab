# simulate_fake_ransomware.ps1
# This simulates file renaming and logs fake ransomware behavior

$sourceFolder = "..\simulations\ransomware_lab"
$logFile = "..\logs\lab5_simulated_ransomware.log"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# 1. Simulate file encryption (renaming)
Get-ChildItem -Path $sourceFolder -Filter *.txt | ForEach-Object {
    $originalName = $_.FullName
    $newName = "$($_.FullName).locked"
    Rename-Item -Path $_.FullName -NewName "$($_.Name).locked"

    Add-Content -Path $logFile -Value "[$timestamp] ALERT: File encrypted - $newName"
}

# 2. Simulate malware process
$fakeProcess = "C:\Users\John\AppData\Roaming\fr34k3r.exe"
Add-Content -Path $logFile -Value "[$timestamp] ALERT: Suspicious process executed - $fakeProcess"

# 3. Simulate outbound connection
Add-Content -Path $logFile -Value "[$timestamp] ALERT: Outbound connection to 45.77.88.22:4444"

Write-Host "✅ Fake ransomware activity simulated. Check logs at $logFile"
