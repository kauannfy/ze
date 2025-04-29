opcao1 =
{
	texto : "Jogar",
	
	funcao : function()
	{
		room_goto_next()	
	},
}

opcao2 =
{
	texto : "Sair",
	
	funcao : function()
	{
		game_end()
	},
}

opcao3 =
{
	texto : "Shape",
	
	funcao : function()
	{
		show_message("Shape")	
	},
}

opcao4 =
{
	texto : "Conquistas",
	
	funcao : function()
	{
		show_message("Shape")	
	},
}

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
margem = 0

audio_play_sound(snd_mscfundo, 10, 1)