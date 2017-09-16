# stop program from starting at startup
Remove-ItemProperty -path HKLM:\Software\Microsoft\Windows\CurrentVersion\Run -name winlog

# restore text files to open with notepad
$WINDIR = "$env:WINDIR"
New-ItemProperty -path HKLM:\Software\Classes\txtfile\shell\open\command -name "(Default)" -PropertyType ExpandString -value "$WINDIR\NOTEPAD.EXE %1" -Force