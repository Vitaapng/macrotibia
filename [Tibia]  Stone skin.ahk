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
ColorSSA := 0x777777 ;MUDAR
SSAy := 186	;MUDAR
SSAx := 1217	;MUDAR



;End Execute
return


Home::
	Pause
return


AutoHealing:

If WinActive("ahk_exe client.exe") ;MUDAR
{
	PixelGetColor, SSA, %SSAx%, %SSAy%, Fast RGB
	Sleep, 70
	If (ColorSSA != SSA)
	{
		Send, {F11} ;MUDAR
		KeyWait, F11 ;MUDAR
		Sleep, 100
		return
	}
}
return