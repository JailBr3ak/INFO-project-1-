Phase 2: Convert E01 to DD Format
The mount command cannot read .E01 files directly. You must use xmount to create a virtual .dd file.

Bash
# Convert and mount virtually to Documents
xmount --in ewf Windows_Evidence_001.E01 /home/jason/Documents
Phase 3: Mounting the Windows Image
Now you will create a mount point and attach the virtual .dd file in read-only mode (crucial for forensic integrity).

Bash
# Create the mount directory
mkdir /mnt/dd

# Mount the virtual DD file in read-only mode
mount -o ro /home/jason/Documents/Windows_Evidence_001.dd /mnt/dd/
Phase 4: Viewing and Counting Files
Use the list command to view the contents. This is where you will find the answer to the lab question.

Bash
# List all files and directories in the mounted image
ls -la /mnt/dd/
Phase 5: Mounting MAC Image via Loop Device
This task demonstrates an alternative method using loopback devices for different file systems (like HFS+).

Bash
# Identify the first available loop device
losetup -f

# Attach the MAC image to the loop device (Example using loop14)
losetup /dev/loop14 MAC_Evidence_001.dd
