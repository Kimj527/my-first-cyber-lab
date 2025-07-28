# Incident Response Playbook: Ransomware Attack

---

## Summary
- **Incident Type:** Ransomware Activity
- **Source:** Endpoint Alert & EDR Logs
- **Date/Time:** 2025-07-28 08:12 EST
- **Summary:** Suspicious file extensions (`.locked`), outbound C2 IP, and process execution indicate likely ransomware

---

## Indicators of Compromise (IOCs)
- File extension: `.locked`
- Malicious process: `fr34k3r.exe`
- External IP: `45.77.88.22`
- Port: 4444

---

## Immediate Actions
- [x] Isolate affected host
- [x] Block external IP at firewall
- [x] Stop and quarantine `fr34k3r.exe`
- [x] Notify IT and escalate to Tier 2

---

## Remediation Plan
- Run antivirus and EDR full scan
- Restore encrypted files from backup
- Investigate persistence methods
- Report findings to SOC lead

---

## Status
🟠 Escalated – pending Tier 2 analysis
