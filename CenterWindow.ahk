#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CenterWindow(WinTitle:="A") {
  WinGetPos,,, Width, Height, %WinTitle%
  WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
}

; ctrl + shift + alt + c
^+!c::
	WinGet, maximizedWindow, MinMax, A
	if not maximizedWindow
		CenterWindow()
Return
