if init == true
{
	var _guix = display_get_gui_width()
	var _guiy = display_get_gui_height()

	var _xx = 0
	var _yy = _guiy - 200
	var _c = c_black
	var _sprite = texto_grid[# Infos.Retrato,pagina]
	var _texto = string_copy(texto_grid[# Infos.Texto,pagina],0,caractere)


	draw_set_font(fnt_dialogo)
	if texto_grid[# Infos.Lado,pagina] == 0
	{
		draw_rectangle_color(_xx+95,_yy-5,_guix-95,_guiy,c_white,c_white,c_white,c_white,false)
		draw_rectangle_color(_xx+100,_yy,_guix-100,_guiy,_c,_c,_c,_c,false)
		draw_text(_xx+110,_yy - 50,texto_grid[# Infos.Nome,pagina])
		draw_text_ext(_xx +300,_yy +32, _texto,32,_guix - 400)
		draw_sprite_ext(_sprite,0,185,_guiy-85,3,3,0,c_white,1)
	}
	else
	{
		draw_rectangle_color(_xx+95,_yy-5,_guix-95,_guiy,c_white,c_white,c_white,c_white,false)
		draw_rectangle_color(_xx+100,_yy,_guix-100,_guiy,_c,_c,_c,_c,false)
		var _stgw = string_width(texto_grid[# Infos.Nome,pagina])
		draw_text(_guix-110 - _stgw,_yy - 50,texto_grid[# Infos.Nome,pagina])
		draw_text_ext(_xx +130,_yy +32,_texto,32,_guix - 400)
		draw_sprite_ext(_sprite,0,_guix - 185,_guiy-85,-3,3,0,c_white,1)
	}
}