/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();
draw_set_color(c_black);
draw_set_font(Font_Verdana);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if (room_atual == "Fase1") {
    draw_text(x, y, "1");
} else if (room_atual == "Fase2") {
    draw_text(x, y, "2");
} else if (room_atual == "Fase3") {
    draw_text(x, y, "3");
} else if (room_atual == "Fase4") {
    draw_text(x, y, "4");
}

