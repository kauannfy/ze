if x < obj_brawler.x
{
	image_xscale = 1
}

if x > obj_brawler.x
{
	image_xscale = -1
}

if y > obj_brawler.y
{
	estado = "correndob"
}

if y < obj_brawler.y
{
	estado = "correndo"
}


if distance_to_object(obj_brawler) < rangemin and keyboard_check(ord("E"))
{
	seguindo = true
	estado = "correndo"
}

if (seguindo = true) and x < obj_brawler.x
{
	move_towards_point(obj_brawler.x -50, obj_brawler.y-1, vel)	
}

if (seguindo = true) and x > obj_brawler.x
{
	move_towards_point(obj_brawler.x +50, obj_brawler.y-1, vel)
	
}

if (seguindo = true) and keyboard_check(ord("X"))
{
	seguindo = false
	estado = "parado"
}

if (!seguindo)
{
	estado = "parado"
}

if distance_to_object(obj_brawler) < 10
{
	estado = "parado"
	vel = 0
}
else
{
	vel = 4
}

switch (estado)
{	
	case "parado":
	sprite_index = spr_portal_1
	break
	
	case "correndo":
	sprite_index = spr_portal_run
	break
	
	case "correndob":
	sprite_index = spr_portal_run_b
	break
}

