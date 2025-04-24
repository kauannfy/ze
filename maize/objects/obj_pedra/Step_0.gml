if distance_to_object(obj_brawler) < rangemin and pegou = false and jogou = false
{
	estado = "perto"
}

if distance_to_object(obj_brawler) > rangemin
{
	estado = "longe"
}

if jogou = true
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