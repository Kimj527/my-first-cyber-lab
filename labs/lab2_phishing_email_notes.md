# SOC Investigation Notes - Lab 2: Phishing Email

**Alert Type:** Suspicious Email Received  
**Subject:** Urgent Password Reset Required  
**Sender:** it-support@micros0ft-support.com  
**Spoofing Detected:** Yes – domain impersonation using “micros0ft” with a zero  
**Phishing Link:** http://secure-reset-password.support-portal.info  
**X-Originating-IP:** 92.34.56.78

---

## Threat Intel:

- **WHOIS Lookup:**
  - Organization: RIPE Network Coordination Centre
  - Country: Netherlands (NL)
  - Abuse Contact: [redacted]

- **VirusTotal:**  
  - Community Grade: 0 detections

---

## Analysis Summary:

The email attempts to impersonate Microsoft IT support to steal login credentials. Despite VirusTotal showing 0 detections for the IP, the spoofed domain and urgency language (“Failure to comply...”) indicate social engineering. This is a clear phishing attempt.

---

## Response Actions:

- Block domain: `support-portal.info` in email filters  
- Add sender domain `micros0ft-support.com` to blocklist  
- Notify user to delete the email and avoid clicking links  
- Create phishing detection signature in mail gateway  
- Document and archive .eml for future pattern matching  

**Status:** Closed – Phishing mitigated and user educated
