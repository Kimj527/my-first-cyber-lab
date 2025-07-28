# SOC Simulation - Ransomware Activity Response (Lab 5)

---

## Summary
Simulated ransomware behavior was detected through a safe lab script:
- Dummy files renamed with `.locked` extension
- Logs show fake process execution (`fr34k3r.exe`)
- Simulated outbound C2 traffic to `45.77.88.22:4444`

---

## IOCs
| Type | Value |
|------|-------|
| Extension | `.locked` |
| Process | `fr34k3r.exe` |
| C2 IP | `45.77.88.22` |
| Port | `4444` |

---

## Simulated Response Actions
- [x] Host isolated (simulated)
- [x] IP blocked at firewall (simulated)
- [x] Process terminated (simulated)
- [x] Tier 2 escalation simulated
- [x] Documentation completed

---

## Notes
This was a **safe ransomware simulation** created for educational purposes. No actual malware was used or executed.
