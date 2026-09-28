# Postfix Setup Notes

## Steps
- Installed mailutils: `sudo apt install mailutils -y`
- Created mailbox:
  ```bash
  sudo touch /var/mail/meghna96128
  sudo chown meghna96128:mail /var/mail/meghna96128

- Reinstalled postfix and enabled service:
    sudo apt install --reinstall postfix -y
    sudo systemctl unmask postfix
    sudo systemctl enable postfix
    sudo systemctl start postfix
    sudo systemctl start postfix

- Postfix Configuration Choice
During installation, Postfix prompts for configuration type.
I chose: Internet with smarthost
Works for local delivery now.
Prepares for future integration with Amazon SES or other SMTP relays.
“Local only” would restrict mail to the VM and block future cloud integration.

Testing Mail Delivery
- Send a test message:
echo "Hello from Postfix" | mail -s "Test Subject" meghna96128

- Read mail:
`mail`




