# Playbook: Investigate Suspicious IP (123.45.67.89)

## Summary:
Detected multiple blocked attempts from internal host `192.168.1.15` to external IP `123.45.67.89` on ports 22 (SSH) and 3389 (RDP).

## Steps:
1. Review firewall logs to confirm repeated access attempts.
2. Perform a WHOIS lookup on IP `123.45.67.89`
3. Check VirusTotal for malicious reputation
4. Identify internal device (192.168.1.15) owner
5. Scan internal device for malware or unauthorized tools
6. Escalate to Tier 2 if persistence or lateral movement is suspected

## Indicators of Compromise (IOCs):
- External IP: `123.45.67.89`
- Targeted Ports: 22 (SSH), 3389 (RDP)
- Internal Source: `192.168.1.15`

## Response Status:
🟡 Ongoing investigation

---

## Findings:

- WHOIS shows IP registered to [Asia Pacific Network Information Centre], located in [AU]
- VirusTotal shows [2] detections
- Behavior suggests brute-force attempts on SSH and RDP

## Next Steps:

- Block IP at perimeter firewall
- Notify IT to isolate and scan host 192.168.1.15
- Document findings in ticketing system
- Monitor for additional outbound connections from that host
