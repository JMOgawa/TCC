/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (room_get_name(room) == "Fase1") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "Dica:\n   king.right()\n   king.left()\n   king.up()\n   king.down()");
} else if (room_get_name(room) == "Fase2") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "king.right(steps)\nking.left(steps)\nking.up(steps)\nking.down(steps)");
} else if (room_get_name(room) == "Fase3") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "king.right()\nking.left()\nking.up()\nking.down()");
} else if (room_get_name(room) == "Fase4") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "king.right()\nking.left()\nking.up()\nking.down()");
}


//if (room_get_name(room) = "Pontuacao"){
//	instance_destroy(obj_player)
//	var linha = 50;
//	draw_set_font(Font_Verdana)	
//	draw_set_valign(fa_middle)
//	draw_set_halign(fa_center)
//	draw_text(x, y, "Fase");
//	draw_text(x + 500, y, "Score");
//	//show_message(global.lista_pontos[0])
//	for (var i = 0; i < array_length(global.lista_pontos); i++) { 
//		linha += 50;
//	    draw_text(x, y + linha, string(i + 1));
//		draw_text(x + 250, y + linha, "------------------");
//		draw_text(x + 500, y + linha, global.lista_pontos[i]);
//	}
//}
