for (var i = 0; i < array_length(menu); i++){
	
	var _margem = 0
	var _cor = c_white
	draw_set_font(fnt_menu)
	var _altura = string_height("I")
	
	if (i = atual){
		_margem = margem
		_cor = c_red
	}
	
	draw_set_color(_cor)
	draw_text(20 + _margem, 20 + _altura * i, menu[i].texto)
	draw_set_color(-1)
	draw_set_font(-1)
}