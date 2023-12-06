/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var barra_width = 50; // Largura total da barra de vida
var barra_height = 5; // Altura da barra de vida
var vida_percent = vida_total/5; // Porcentagem de vida atual

draw_self()
draw_set_color(c_green);
draw_rectangle(x - (barra_width / 2), y - 20, x - (barra_width / 2) + (barra_width * vida_percent), y - 20 + barra_height, false);
draw_text(x - (barra_width / 2) + 25, y - 30, string(vida_total));


