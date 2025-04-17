var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))

if (up)
{
	y -= vel
}

if (down)
{
	y += vel
}

if (dir)
{
	x += vel
	image_xscale = 1
}

if (esq)
{
	x -= vel
	image_xscale = -1
}

