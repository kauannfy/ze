var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))
velh = (dir - esq) * vel
velv = (down - up) * vel

if (up)
{
	move_collide(velh,velv)
}

if (down)
{
	move_collide(velh,velv)
}

if (dir)
{
	move_collide(velh,velv)
	image_xscale = 1
}

if (esq)
{
	move_collide(velh,velv)
	image_xscale = -1
}

if (dir != 0 and esq != 0)
{
	if (down)
	{
		vel = 0
	}
}
else
{
	vel = 8
}

if (dir != 0 and esq != 0)
{
	if (up)
	{
		vel = 0
	}
}

	