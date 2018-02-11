#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^j::
	Loop, 500
	{
		Send, {LWin down}
		Send, {PrintScreen}
		Send, {LWin up}
		Sleep, 1000
		Send, {Right}
		Sleep, 1000
	}
Return
