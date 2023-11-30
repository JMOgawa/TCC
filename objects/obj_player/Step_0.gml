/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if keyboard_check(vk_enter){
		comando_player(comando_movimento, velocidade, colidiu_diamante);
		//mudarFase(diamonds_coletados, diamante_missao);
		comando_movimento = "";
}

//instance_destroy()
//room_restart()