#region Movimentação e dash
var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))
var dash = keyboard_check(ord("Q"))

velh = (dir - esq) * vel
velv = (down - up) * vel
if instance_exists(obj_dialogo)
{
	falando = true
}
if (up) and estado != "dash" 
{
	move_collide(velh,velv)
	estado = "correndob"
	if (dash) and candash = true and pode_dash = true
	{
		image_index = 0
		estado = "dash"
		vspeed -= 7
	}
	if (dir)
	{
		if (dash) and candash = true and pode_dash = true
		{
			image_index = 0
			estado = "dash"
			direction = image_angle +45
			hspeed +=0.75
			vspeed -=0.75
		}
	}
	if (esq)
	{
		if (dash) and candash = true and pode_dash = true
		{
			image_index = 0
			estado = "dash"
			direction = image_angle +135
			hspeed -=0.75
			vspeed -=0.75
		}
	}
}

if (down) and estado != "dash"
{
	move_collide(velh,velv)
	estado = "correndo"
	if (dash) and candash = true and pode_dash = true
	{
		image_index = 0
		estado = "dash"
		vspeed += 7
	}
	if (dir)
	{
		if (dash) and candash = true and pode_dash = true
		{
			image_index = 0
			estado = "dash"
			direction = image_angle +315
			hspeed +=0.75
			vspeed +=0.75
		}
	}
	if (esq)
	{
		if (dash) and candash = true and pode_dash = true
		{
			image_index = 0
			estado = "dash"
			direction = image_angle + 225
			hspeed -=0.75
			vspeed +=0.75
		}
	}
}

if (dir) and estado != "dash"
{
	move_collide(velh,velv)
	image_xscale = 1
	estado = "correndo"
	if (dash) and candash = true and pode_dash = true
	{
		image_index = 0
		estado = "dash"
		hspeed += 9
	}
}

if (esq) and estado != "dash" 
{
	move_collide(velh,velv)
	image_xscale = -1
	estado = "correndo"
	if (dash) and candash = true and pode_dash = true
	{
		image_index = 0
		estado = "dash"
		hspeed -= 9
	}
}

if estado != "dash"
{
	hspeed = 0
	vspeed = 0
}

#region Colisão do dash
if velh >1
{
	if place_meeting(x +10,y,obj_colisor)
	{
		candash = false
		hspeed = 0
		vspeed = 0
	}
}
if velh <-1
{
	if place_meeting(x -10,y,obj_colisor)
	{
		candash = false
		hspeed = 0
		vspeed = 0
	}
}

if velv >1
{
	if place_meeting(x,y+10,obj_colisor)
	{
		candash = false
		hspeed = 0
		vspeed = 0
	}
}
if velv <-1
{
	if place_meeting(x,y-10,obj_colisor)
	{
		candash = false
		hspeed = 0
		vspeed = 0
	}
}

if !place_meeting(x,y,obj_colisor) and pode_dash = true
{
	candash = true
}

#endregion

#region Cooldown do dash
if pode_dash = true{
	timer = 0
	if (dash)
	{
		pode_dash = false
	}
}
else
{
	timer +=1
	if timer = veldash
	{
		pode_dash = true
	}
}
#endregion


if (velv < -1) and estado != "dash"
{
	estado = "correndob"
}


if (velh = 0 and velv = 0)
{
	estado = "parado"
}
#endregion

#region Interação
if distance_to_object(obj_npc) < rangeint and keyboard_check_pressed(ord("E")) and falando == false
{
	var _npc = instance_nearest(x,y,obj_npc)
	var _dialogo = instance_create_layer(x,y,"Instances_1",obj_dialogo)
	_dialogo.npc_nome = _npc.nome
}

if falando == true
{
	vel = 0
	hspeed = 0
	vspeed = 0
	var npc = instance_nearest(x,y,obj_npc)
	
	if y > npc.y
	{
		if x > npc.x
		{
			move_towards_point(npc.x +80, npc.y,2)
			image_xscale = -1
			estado = "correndob"
			if distance_to_point(npc.x + 80,npc.y) <2
			{
				vel = 0
				move_towards_point(npc.x -80, npc.y,0)
				estado = "parado"
			}
		}
		if x < npc.x
		{
			move_towards_point(npc.x -80, npc.y,2)
			image_xscale = 1
			estado = "correndob"
			if distance_to_point(npc.x - 80,npc.y) <2
			{
				vel = 0
				move_towards_point(npc.x -80, npc.y,0)
				estado = "parado"
			}
		}
	}
	if y < npc.y
	{
		if x > npc.x
		{
			move_towards_point(npc.x +80, npc.y+28,2)
			image_xscale = -1
			estado = "correndo"
			if distance_to_point(npc.x + 80,npc.y+28) <2
			{
				vel = 0
				move_towards_point(npc.x -80, npc.y+28,0)
				estado = "parado"
			}
		}
		if x < npc.x
		{
			move_towards_point(npc.x -80, npc.y+28,2)
			image_xscale = 1
			estado = "correndo"
			if distance_to_point(npc.x - 80,npc.y+28) <2
			{
				vel = 0
				move_towards_point(npc.x -80, npc.y+28,0)
				estado = "parado"
			}
		}
	}
	
}
else
{
	vel = 5
}
#endregion

#region Troca de Sprites
switch (estado)
{	
	case "parado":
	sprite_index = spr_brawler_1
	break
	
	case "paradob":
	sprite_index = spr_brawler_b
	break
	
	case "correndo":
	sprite_index = spr_brawler_run_1
	break
	
	case "correndob":
	sprite_index = spr_brawler_run_b_1
	break
	
	case "dash":
	sprite_index = spr_brawler_roll
	break
	
}
#endregion



	