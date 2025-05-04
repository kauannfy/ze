if init == false
{
	all_textos()
	init = true
}

if mouse_check_button_pressed(mb_left)
{
	if caractere < string_length(texto_grid[# Infos.Texto, pagina])
	{
		audio_play_sound(snd_interaction, 1000, 0)
		caractere = string_length(texto_grid[# Infos.Texto, pagina])
	}
	else
	{
		alarm[0] = 2
		caractere = 0
		if pagina < ds_grid_height(texto_grid) - 1
		{
			audio_play_sound(snd_interaction, 1000, 0)
			pagina ++
		}
		else
		{
			obj_brawler.falando = false
			if npc_nome = "azul"
			{
				obj_portal.seguindo = true
			}
			instance_destroy()
		}
	}
}