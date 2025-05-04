depth = obj_brawler.depth +1
if obj_brawler.estado = "dash" and pegou = true
{
	image_alpha = 0
}
else
{
	image_alpha = 1
}
if distance_to_object(obj_brawler) < rangemin and pegou = false
{
	estado = "perto"
}

if distance_to_object(obj_brawler) > rangemin or speed >0
{
	estado = "longe"
}
if distance_to_object(obj_brawler) > rangemax
{
	speed = 0
}

if mouse_check_button_pressed(mb_left) and pegou = true
{
	pegou = false
	obj_brawler.isholding -=1
	direction = point_direction(x,y,mouse_x,mouse_y)
	speed = 12
}

switch (estado)
{
	case "longe":
	sprite_index = spr_pedra
	break
	
	case "perto":
	sprite_index = spr_pedra_h
	break
}