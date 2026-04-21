cd C:\Windows\system32

gci -recurse | % { gi $_.FullName -stream * } | where stream -ne ':$Data'

get-content -path C:\Windows\system32\simple_file1.txt -stream secret_file1.txt

get-content -path C:\Windows\system32\simple_file2.txt -stream secret_file2.txt
