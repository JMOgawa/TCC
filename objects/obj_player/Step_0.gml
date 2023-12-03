/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//show_message(obj_player.x)
//show_message(obj_player.y)
if keyboard_check(vk_enter){
		comando_player(comando_movimento, velocidade, qnt_movimento, diamantes_coletados);
		//mudarFase(diamonds_coletados, diamante_missao);
		comando_movimento = "";
}

//instance_destroy()
//room_restart()