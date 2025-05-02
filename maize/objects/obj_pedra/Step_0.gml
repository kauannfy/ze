depth = obj_brawler.depth +2
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
	instance_destroy(obj_pedra)
	instance_create_layer(x,y,"Instances",obj_pedra, {speed: 12, direction: point_direction(x,y,mouse_x,mouse_y)})
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