for (var i = 0; i < array_length(menu); i++){
	
	var _cor = c_white
	
	if (i = atual){
		_cor = c_red
	}
	
	draw_set_color(_cor)
	draw_text(20, 20 + 20 * i, menu[i])
	draw_set_color(-1)
}