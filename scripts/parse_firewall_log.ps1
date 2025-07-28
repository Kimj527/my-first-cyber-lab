# parse_firewall_log.ps1
# Extracts all blocked connections and shows source and destination IPs

$logPath = "..\logs\lab3_firewall_sample.log"

if (Test-Path $logPath) {
    Write-Host "Reading log file from: $logPath`n"

    $lines = Get-Content $logPath
    foreach ($line in $lines) {
        if ($line -match "Block") {
            # Extract timestamp, source, and destination IP
            if ($line -match "\[(.*?)\] Block TCP (.*?) -> (.*?):(\d+)") {
                $timestamp = $matches[1]
                $srcIP = $matches[2]
                $dstIP = $matches[3]
                $port = $matches[4]

                Write-Host "[$timestamp] Blocked attempt from $srcIP to $dstIP on port $port"
            }
        }
    }
} else {
    Write-Host "Log file not found at path: $logPath"
}
