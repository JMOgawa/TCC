/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//aumenta tamanho da tela
//window_set_size(1360,700)

diamante_missao = 0
diamantes_coletados = 0
diamante_aux = 0
comando_movimento = ""
qnt_movimento = 1
velocidade = 1
colidiu_diamante = false
colisao_diamante = instance_place(x, y, obj_diamond);
colisao_inimigo = instance_place(x, y, Obj_pig);
colisao_chave = instance_place(x, y, obj_chaveAzul);