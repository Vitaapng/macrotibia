
#SingleInstance, Force

CoordMode, Pixel, Screen

CoordMode, Mouse, Screen

SendMode, Input



+e::

	MouseGetPos, XFlower, YFlower

	Click D 1055, 251

	Click u %XFlower%, %YFlower%

return