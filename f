📋 All Commands (Ready to Copy & Paste)

Below are all commands used in Lab 2 for convenience.

1️⃣ View Partition Table (Windows_Evidence_002.dd)
mmls "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_002.dd"
2️⃣ View File System Type and OS
fsstat "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd"
3️⃣ View Image Details
img_stat "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd"
📂 NTFS Metadata Structure Commands
4️⃣ MFT File Overview (Entry 0)
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 0
5️⃣ ✅ MFTMirr File Overview (Entry 1) ← Required Answer
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 1
6️⃣ Boot File Overview (Entry 7)
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 7
7️⃣ Volume Metadata File (Entry 3)
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 3
8️⃣ AttrDef File (Entry 4)
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 4
9️⃣ Bitmap File (Entry 6)
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 6
🔟 BadClus File (Entry 8)
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 8
1️⃣1️⃣ Secure File (Entry 9)
istat -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 9
📁 File & Inode Investigation Commands
List Files and Directories
fls -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd"
List Removed Inodes
ils -r "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd"
Find File Name by Inode (Example: inode 96)
ffind -f ntfs "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" 96
📦 Recover Files from Image

⚠️ Create this folder first on Desktop:
Retrieved Files by SleuthKit

Then run:

tsk_recover -i raw -e "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" "C:\Users\Administrator\Desktop\Retrieved Files
