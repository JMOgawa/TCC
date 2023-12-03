/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_black)

var linha = 10;

for (var i = 0; i < array_length(saida_codigo); i++) {
    draw_text(x + 20, y + linha, saida_codigo[i]);
	linha += 5
}
