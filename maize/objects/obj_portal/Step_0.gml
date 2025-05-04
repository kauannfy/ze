#region Mudar o sprite conforme o local
if x < obj_brawler.x
{
	image_xscale = 1
}

if x > obj_brawler.x
{
	image_xscale = -1
}

if y > obj_brawler.y
{
	estado = "correndob"
}

if y < obj_brawler.y
{
	estado = "correndo"
}
#endregion
#region Interação
if seguindo = true and x < obj_brawler.x
{
	move_towards_point(obj_brawler.x -90, obj_brawler.y-1, vel)
}

if seguindo = true and x > obj_brawler.x
{
	move_towards_point(obj_brawler.x +90, obj_brawler.y-1, vel)

}

if keyboard_check_pressed(ord("X"))
{
	seguindo = false
	move_towards_point(obj_brawler.x +90, obj_brawler.y-1, 0)
	estado = "parado"
}

if !seguindo
{
	estado = "parado"
}

if distance_to_object(obj_brawler) < 42
{
	estado = "parado"
	vel = 0
}
else
{
	vel = 4
}

if distance_to_object(obj_brawler) < rangemin and seguindo = false and obj_brawler.falando = false
{
	instance_create_layer(x-15, y -75, "Instances_1", obj_particula, {sprite_index: spr_inter})
}
#endregion
#region Mudança de sprites
switch (estado)
{	
	case "parado":
	sprite_index = spr_portal_1
	break
	
	case "correndo":
	sprite_index = spr_portal_run
	break
	
	case "correndob":
	sprite_index = spr_portal_run_b
	break
}
#endregion

