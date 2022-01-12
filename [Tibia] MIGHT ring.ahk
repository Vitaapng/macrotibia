#NoEnv
#Warn
#SingleInstance Force
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SendMode Input

SetMouseDelay, -1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0


SetTimer, AutoHealing, 150 ;a cada 350 milisegundos = 0,35segundos. o autohotkey vai ler o "AutoHealing"


;HP INFORMATION
ColorSSA := 0xA88D39 ;MUDAR
SSAy := 252	;MUDAR ,  
SSAx := 1219	;MUDAR , 




;End Execute
return


End::
	Pause
return


AutoHealing:

If WinActive("ahk_exe client.exe") ;MUDAR
{
	PixelGetColor, SSA, %SSAx%, %SSAy%, Fast RGB
	Sleep, 70
	If (ColorSSA != SSA)
	{
		Send, {F12} ;MUDAR
		KeyWait, F12 ;MUDAR
		Sleep, 100
		return
	}
}
return