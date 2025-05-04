function all_textos(){
	switch npc_nome
	{
		case "azul":
		ds_grid_add_text("Hey, you!",spr_portal_p2,0,"Azul")
		ds_grid_add_text("I'm a little lost.. could you please take me to the city?",spr_portal_p2,0,"Azul")
		ds_grid_add_text("Um... sure. Follow me.",spr_brawler_p1,1,"Vermelho")
		ds_grid_add_text("Thanks!",spr_portal_p1,0,"Azul")
		break
		
		case "amarelo":
		ds_grid_add_text("If you're looking for the city, it is not too far. Just head east from here.",spr_npc_amarelo,0,"Nigga")
		break
	}
}

function ds_grid_add_row()
{
	///@arg ds_grid
	
	var _grid = argument[0]
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1)
	return (ds_grid_height(_grid)-1)
}

function ds_grid_add_text()
{
	///@arg texto
	///@arg retrato
	///@arg lado
	
	var _grid = texto_grid
	var _y  = ds_grid_add_row(_grid)
	
	_grid [# 0, _y] = argument[0]
	_grid [# 1, _y] = argument[1]
	_grid [# 2, _y] = argument[2]
	_grid [# 3, _y] = argument[3]
}