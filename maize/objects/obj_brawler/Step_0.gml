var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))
velh = (dir - esq) * vel
velv = (down - up) * vel

if (up)
{
	move_collide(velh,velv)
	estado = "correndo"
}

if (down)
{
	move_collide(velh,velv)
	estado = "correndo"
}

if (dir)
{
	move_collide(velh,velv)
	image_xscale = 1
	estado = "correndo"
}

if (esq)
{
	move_collide(velh,velv)
	image_xscale = -1
	estado = "correndo"
}

if (!up) and (!down) and (!dir) and (!esq)
{
	estado = "parado"
}

switch (estado)
{	
	case "parado":
	sprite_index = spr_brawler
	break
	
	case "correndo":
	sprite_index = spr_brawler_run
	break
}



	