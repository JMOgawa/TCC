/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_color(c_black)
if (room_get_name(room) == "Fase1") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "Dica:\n   king.right()\n   king.left()\n   king.up()\n   king.down()");
} else if (room_get_name(room) == "Fase2") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "Dica:\n   king.right(steps)\n   king.left(steps)\n   king.up(steps)\n   king.down(steps)");
	draw_text(x+200, y, "steps: 1, 2, 3, 4, \n5, 6, 7, 8, 9");
} else if (room_get_name(room) == "Fase3") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "Dica:\n   king.attack(steps)\n   king.right(steps)\n   king.left(steps)\n   king.up(steps)\n   king.down(steps)");
	draw_text(x+200, y, "steps: 1, 2, 3, 4, \n5, 6, 7, 8, 9");
} else if (room_get_name(room) == "Fase4") {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x, y, "Dica:\n   king.right(steps)\n   king.left(steps)\n   king.up(steps)\n   king.down(steps)\n   nome_variavel = getRecurso()");
	draw_text(x+200, y, "steps: 1, 2, 3, 4, \n5, 6, 7, 8, 9");
}



