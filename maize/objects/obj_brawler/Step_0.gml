#region Movimentação
var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))
velh = (dir - esq) * vel
velv = (down - up) * vel

if (up)
{
	move_collide(velh,velv)
	estado = "correndob"
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

if (velv < -1)
{
	estado = "correndob"
}


if (velh = 0 and velv = 0)
{
	estado = "parado"
}
#endregion

if distance_to_object(obj_item) <= rangeitem and keyboard_check(ord("M"))
{
	if x < obj_pedra.x
	{
		instance_destroy(obj_item)
		instance_create_layer(x + 20, y+10,"Instances_1",obj_pedra,{sprite_index: spr_pedra})
	}
	if x > obj_pedra.x
	{
		instance_destroy(obj_item)
		instance_create_layer(x - 20, y+10,"Instances_1",obj_pedra,{sprite_index: spr_pedra})
	}
}




#region Troca de Sprites
switch (estado)
{	
	case "parado":
	sprite_index = spr_brawler_1
	break
	
	case "correndo":
	sprite_index = spr_brawler_run_1
	break
	
	case "correndob":
	sprite_index = spr_brawler_run_b_1
	break
}
#endregion



	