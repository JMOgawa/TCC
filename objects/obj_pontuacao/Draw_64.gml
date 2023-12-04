if (room_get_name(room) = "Pontuacao"){
	var linha = 50;
	draw_set_font(Font_Verdana)	
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text(x, y, "Fase");
	draw_text(x + 500, y, "Score");
	for (var i = 0; i < array_length(global.lista_pontos); i++) { 
		linha += 50;
	    draw_text(x, y + linha, string(i + 1));
		draw_text(x + 250, y + linha, "------------------");
		draw_text(x + 500, y + linha, global.lista_pontos[i]);
	}
}