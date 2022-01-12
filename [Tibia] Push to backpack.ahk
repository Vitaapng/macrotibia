#SingleInstance, Force
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SendMode, Input



Alt::
	MouseGetPos, StartX, StartY
	Click D
	Click u 1045, 36
	MouseMove, %StartX%, %StartY%
return