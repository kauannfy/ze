if distance_to_object(obj_brawler) <= obj_brawler.rangeint and obj_brawler.isholding = 0 and keyboard_check_pressed(ord("E"))
{
	pegou = true
	obj_brawler.isholding +=1
}

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


repeat(abs(speed))
	{
		if (!place_meeting(x+sign(speed),y,obj_colisor))
		{
			speed = 12
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
			speed = 12
		}
		else
		{
			speed= 0
		}
	}