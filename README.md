# Automated Patch Update with Email Alerts

This project automates system patching on Ubuntu/Debian and sends a notification email with the patch log.  
It uses **Postfix + Mailutils** for local email delivery.

---

##  Features
- Runs `apt update && apt upgrade -y` to apply system patches.
- Logs output to `/var/log/patching.log`.
- Sends patch report via local Postfix + Mailutils.
- Reports are viewable with the `mail` command inside the VM.
- Designed to be extended with Amazon SES for cloud-ready delivery.

---
