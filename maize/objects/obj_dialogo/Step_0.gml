if init == false
{
	all_textos()
	init = true
}

if mouse_check_button_pressed(mb_left)
{
	if caractere < string_length(texto_grid[# Infos.Texto, pagina])
	{
		caractere = string_length(texto_grid[# Infos.Texto, pagina])
	}
	else
	{
		alarm[0] = 2
		caractere = 0
		if pagina < ds_grid_height(texto_grid) - 1
		{
			pagina ++
		}
		else
		{
			obj_brawler.falando = false
			instance_destroy()
			obj_portal.seguindo = true
		}
	}
}