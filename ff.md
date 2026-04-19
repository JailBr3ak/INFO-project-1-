1. Local RAM Acquisition (Using dd)
This method uses the fmem kernel module to provide access to the physical memory device.

Bash
# Acquire RAM locally to the home directory
dd if=/dev/fmem of=/home/james/ubuntu_local_ram.dd bs=1MB
2. Local RAM Acquisition (Using LiME)
LiME (Linux Memory Extractor) is preferred for many forensic investigations because it is designed to minimize its footprint on the memory being captured.

Bash
# Navigate to the source directory
cd /home/james/LiME/src/

# Compile the kernel module
make

# Insert the module to dump RAM in LiME format
insmod lime-6.2.0-35-generic.ko "path=../../ubuntu_local_ram.mem format=lime"
3. Remote RAM Acquisition (Using netcat)
This technique is used when you cannot save a large file locally due to disk space constraints or to avoid overwriting evidence on the suspect's drive.

Step A: On Ubuntu Forensics (The Receiver)
Bash
# Setup netcat to listen on port 1234 and save incoming data
nc -l 1234 > ubuntu_remote_ram.dd
Step B: On Ubuntu Suspect (The Sender)
Bash
# Load the driver if not already running
bash run.sh

# Stream the RAM to the Forensics IP (10.10.1.9)
dd if=/dev/fmem bs=1024 | nc 10.10.1.9 1234
