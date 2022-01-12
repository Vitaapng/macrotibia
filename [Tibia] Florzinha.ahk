
#SingleInstance, Force

CoordMode, Pixel, Screen

CoordMode, Mouse, Screen

SendMode, Input



Tab::

	MouseGetPos, XFlower, YFlower

	Click D 1041, 35

	Click u %XFlower%, %YFlower%

return