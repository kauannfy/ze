function move_collide(argument0,argument1)
{
	repeat(abs(argument0))
	{
		if (!place_meeting(x+sign(argument0),y,obj_colisor))
		{
			if (argument0 != 0 and argument1 != 0)
			{
				x += sign(argument0) * 0.4
			}
			else
			{
				x += sign(argument0)
			}
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
			if (argument0 != 0 and argument1 != 0)
			{
				y += sign(argument1) * 0.4
			}
			else
			{
				y += sign(argument1)
			}
		}
		else
		{
			argument1 = 0
		}
	}
}