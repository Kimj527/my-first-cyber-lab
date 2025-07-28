# SOC Investigation Notes - Lab 1

**Alert Source:** Firewall  
**Alert Description:** Multiple blocked outbound attempts to IP `123.45.67.89` on ports 22 and 3389  
**Severity:** Medium-High  
**Internal Source:** 192.168.1.15  
**External IP Owner:** [Asia Pacific Network Information Centre]  
**IP Reputation:** [VirusTotal shows 2 security vendors flagged the IP `123.45.67.89` as malicious. Listed behaviors include port scanning and brute-force SSH attempts.
]

**Action Taken:**
- Notified IT to isolate 192.168.1.15
- Blocked 123.45.67.89 at firewall
- Created IOC record for IP and ports
- Documented playbook and findings

**Status:** Escalated to Tier 2 for deeper threat hunting
