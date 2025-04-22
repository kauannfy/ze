if distance_to_object(obj_brawler) < rangemin
{
	estado = "perto"
}

if distance_to_object(obj_brawler) > rangemin
{
	estado = "longe"
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