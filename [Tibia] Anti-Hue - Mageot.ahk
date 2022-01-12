#NoEnv
#Warn
#SingleInstance Force
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SendMode Input

SetMouseDelay, -1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0


SetTimer, AutoHealing, 200 ;a cada 350 milisegundos = 0,35segundos. o autohotkey vai ler o "AutoHealing"


;HP INFORMATION
ColorHP := 0xF16161 ;MUDAR
HPy := 126	;MUDAR
HPx := 1227	;MUDAR




;End Execute
return


Del::
	Pause
return


AutoHealing:

If WinActive("ahk_exe MageOT1271.exe") ;MUDAR
{
	PixelGetColor, Heal, %HPx%, %HPy%, Fast RGB
	Sleep, 70
	If (ColorHP != Heal)
	{
		Send, {F10} ;MUDAR
		KeyWait, F10 ;MUDAR
		Sleep, 100
		return
	}
}
return