/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(mostar_mensagem){
	draw_self();
	draw_set_font(Font_Consolas);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var mensagem = "Fase Bloqueada!\nComplete a fase anterior para poder entrar.";
	draw_set_color(c_black);
	draw_text(x+350, y+50, mensagem);
	draw_text(x+344, y+150, "OK");
}

