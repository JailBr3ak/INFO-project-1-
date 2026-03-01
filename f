📋 Full Timeline Creation Commands (Easy Copy-Paste)
1️⃣ Open CMD inside TSK bin directory

(After navigating to the bin folder, type cmd in the path bar)

2️⃣ Gather Temporal Data (Display on Screen)
fls -m 63 "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd"
3️⃣ ✅ Write Temporal Data to body.txt ← Exam Answer
fls -m 63 "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" > body.txt
4️⃣ Generate timeline.txt from body.txt
perl mactime.pl -b body.txt -z EST5EDT > timeline.txt
🎯 Final Answer (What to write in exam field)
fls -m 63 "E:\CHFI-Tools\Evidence Files\Forensic Images\Windows_Evidence_001.dd" > body.txt
