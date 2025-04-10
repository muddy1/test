#NoTrayIcon


winTitle := "nizima LIVE Setup"

; Install Wizard start window
Winwait (winTitle)
if WinExist(winTitle)
{
   WinActivate
   Send {Enter} ;Continues
   sleep 50
}

; Chooses install location
; C:/Program Files (x86)/nizima Live (Default)
Winwait (winTitle)
if WinExist(winTitle)
{
    WinActivate
	Send {Enter} ; Continues
	sleep 50
}

; Component Selection
Winwait (winTitle)
if WinExist(wintitle)
{
    WinActivate
	Send {Enter} ; Continues
	sleep 50
}

; License Agreement
Winwait (winTitle)
if WinExist(winTitle)
{
   WinActivate
   Send {Tab}
   Send {Space} ; Accepts License Agreement
   Send {Enter} ; Continues
   sleep 50
}

; Shortcut Menu
Winwait (winTitle)
if WinExist(winTitle)
   {
     ; Sets Shortcut location
	 WinActivate
	 Send {Enter} ; Continues
}

; Ready to Install
Winwait (winTitle)
if WinExist(winTitle)
{
    WinActivate
	Send {Enter} ; Starts Installation
}

winTitle := "Windows Security" ; If nizima cam is not install a prompt will popup

; Trusts Live2D INC. and installs nizima cam
Winwait (winTitle)
if WinExist(winTitle)
{
   WinActivate
   Send {Tab}
   Send {Tab}
   Send {Tab}
   Send {Enter} ; Installs cam and finishes Installation
}

winTitle := "ahk_class Qt5152QWindowIcon ahk_exe nizimaLiveSetup2.2.1.exe"

; Closes install wizard
Winwait (winTitle)
if WinExist(winTitle)
{
   WinActivate
   Send {Tab}
   Send {Space}
   Send {Tab}
   Send {Enter} ; Stops nizima from launching and ends Installation
}

ExitApp