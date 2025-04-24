
#region Pegou
if pegou = true and obj_brawler.image_xscale = 1
{
	x = obj_brawler.x +20
	y = obj_brawler.y +10
	depth = obj_brawler.depth -1
	estado = "longe"
}
if pegou = true and obj_brawler.image_xscale = -1
{
	x = obj_brawler.x -20
	y = obj_brawler.y +10
	depth = obj_brawler.depth -1
	estado = "longe"
}
if pegou = true and obj_brawler.estado = "correndob" and obj_brawler.image_xscale = 1
{
	x = obj_brawler.x +20
	y = obj_brawler.y +10
	depth = obj_brawler.depth +1
	estado = "longe"
}
if pegou = true and obj_brawler.estado = "correndob" and obj_brawler.image_xscale = -1
{
	x = obj_brawler.x -20
	y = obj_brawler.y +10
	depth = obj_brawler.depth +1
	estado = "longe"
}
#endregion

if mouse_check_button_pressed(mb_left) and obj_brawler.estado = "parado"
{
	instance_destroy(obj_item)
	instance_create_layer(x,y,"Instances",obj_pedra, {speed: 6, direction: point_direction(x,y,mouse_x,mouse_y)})
	jogou = true
	estado = "longe"
}


repeat(abs(speed))
	{
		if (!place_meeting(x+sign(speed),y,obj_colisor))
		{
			speed = 6
		}
		else
		{
			speed= 0
		}
	}
	
repeat(abs(speed))
	{
		if (!place_meeting(x,y+sign(speed),obj_colisor))
		{
			speed = 6
		}
		else
		{
			speed= 0
		}
	}