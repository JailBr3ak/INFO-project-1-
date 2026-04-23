1. Disable Symbolic Link Protections

sudo sysctl -w fs.protected_symlinks=0
sudo sysctl -w fs.protected_regular=0

2. Compile the Vulnerable Program

gcc vulp.c -o vulp

3. Set Root Ownership and Set-UID Bit

sudo chown root vulp

sudo chmod 4755 vulp

4. Verify the Setup

ls -l vulp
