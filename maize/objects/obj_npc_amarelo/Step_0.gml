if distance_to_object(obj_brawler) < rangemin and obj_brawler.falando = false
{
	instance_create_layer(x-15, y -75, "Instances_1", obj_particula, {sprite_index: spr_inter})
}

if x < obj_brawler.x
{
	image_xscale = 1
}

if x > obj_brawler.x
{
	image_xscale = -1
}