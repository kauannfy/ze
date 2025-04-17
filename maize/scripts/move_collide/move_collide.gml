function move_collide(argument0,argument1)
{
	repeat(abs(argument0))
	{
		if (!place_meeting(x+sign(argument0),y,obj_colisor))
		{
			x += sign(argument0)
		}
		else
		{
			argument0 = 0
		}
	}

repeat(abs(argument1))
	{
		if (!place_meeting(x,y + sign(argument1),obj_colisor))
		{
			y += sign(argument1)
		}
		else
		{
			argument1 = 0
		}
	}
}