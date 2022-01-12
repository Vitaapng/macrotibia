#persistent
SetTimer, anti_paralyze, 100
anti_paralyze:
IfWinNotActive, Tibia
	Return
CoordMode, Pixel, Screen
PixelSearch,,, 1201, 298, 1303, 297, 0xB08B50, 0, Fast RGB
If !ErrorLevel
	Return 
Send {F8}
Return
