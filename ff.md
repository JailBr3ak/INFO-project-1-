2. Create Disk Image
PowerShell
.\dd.exe if=\\.\PHYSICALDRIVE0 of=Z:\Evidence\Windows_Evidence_001.dd bs=512k --size --progress
3. Generate MD5 Hash
PowerShell
Get-FileHash 'Z:\Evidence\Windows_Evidence_001.dd' -Algorithm MD5 | Format-list
4. Cleanup
PowerShell
Remove-Item 'Z:\Evidence\Windows_Evidence_001.dd'
