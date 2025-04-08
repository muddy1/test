#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode, 1 ; A windows's title must start with the specified WinTitle to be a match.
SetControlDelay 0
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

winTitle := "ahk_class Qt5152QWindowIcon ahk_exe nizimaLiveSetup2.2.1.exe"

; Wizard start window
Winwait, %winTitle%,, 120
If WinExist(winTitle)
{
   WinActivate
   Send {Enter} ; Continue
   Sleep 1000
}

; Choose install location
; C:/Program Files (x86)/nizima LIVE (Default)
Winwait, %winTitle%,, 15
If WinExist(winTitle)
{
   ;Proceed with default
   WinActivate
   Send {Enter} ; Continue
   sleep 1000
}

; Component Selection
Winwait, %winTitle%,, 15
If WinExist(winTitle)
{
   ;Application selection
   WinActivate
   Send {Enter} ; Continue
   sleep 1000
}

; License Agreement
Winwait, %winTitle%,, 15
If WinExist(winTitle)
{
   ;Accept License
   WinActivate
   Send {Tab}
   Send {Space} ; Accepts License Agreement
   sleep 500
   Send {Enter} ; Continues
   sleep 1000
}

; Shortcut Menu
Winwait, %winTitle%,, 15
If WinExist(winTitle)
{
   ;Sets Shortcut Location
   WinActivate
   Send {Enter} ; Continues
   Sleep 1000
}

; Ready to Install
Winwait, %winTitle%,, 15
If WinExist(winTitle)
{
   ;Starts Installation
   WinActivate
   Send {Enter} ; Starts installation
}

winTitle := "ahk_class #32770 ahk_exe rundll32.exe" ; If Nizima cam is not installed windows security will ask to trust Live2D INC and install

; Trusts Live2D INC. and installs cam
Winwait, %winTitle%,, 10
If WinExist(winTitle)
{
   WinActivate
   Send {Tab}
   Send {Tab}
   Send {Tab}
   Send {Enter} ; Installs Cam and finishes installation
   Sleep 1000
}

winTitle := "ahk_class Qt5152QWindowIcon ahk_exe nizimaLiveSetup2.2.1.exe"

; Installation Finished
Winwait, %winTitle%,, 15
If WinExist(winTitle)
{
   WinActivate
   Send {Tab}
   Send {Space}
   Send {Tab}
   Send {Enter} ;Stops nizima from launching and ends installation
}

ExitApp