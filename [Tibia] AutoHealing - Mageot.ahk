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
ColorHP := 0xDB4F4F ;MUDAR
HPy := 125	;MUDAR
HPx := 1291	;MUDAR




;End Execute
return


Del::
	Pause
return


AutoHealing:

If WinActive("ahk_exe client.exe") ;MUDAR
{
	PixelGetColor, Heal, %HPx%, %HPy%, Fast RGB
	Sleep, 70
	If (ColorHP != Heal)
	{
		Send, {F2} ;MUDAR
		KeyWait, F2 ;MUDAR
		Sleep, 100
		return
	}
}
return