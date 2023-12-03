// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gerenciar_diamantes(diamantes_coletados){
	//show_message(diamantes_coletados)
	diamante_missao = 0;
	if (room = 1){
		diamante_missao = 4
		i = 0
	}else if (room = 2){
		diamante_missao = 8
		i = 1
	}else if (room = 3){
		diamante_missao = 3
		i = 2
	}else if (room = 4){
		diamante_missao = 6
		i = 3
	}else if (room = 5){
		diamante_missao = 1
		i = 4
	}else if (room = 6){
		diamante_missao = 1
		i = 5
	}else if (room = 7){
		diamante_missao = 1
		i = 6
	}
	
	if diamantes_coletados = diamante_missao {
		//show_message("OKOKOK") 
		global.fase_atual = room
		atualiza_maxPontos(i)
		salvarUsuario()
		//atualiza_Mapa()
		room_goto_next()
	}
}

function atualiza_maxPontos(i){
	//for (var i = 0; i < array_length(global.lista_pontos); i++) { 
	global.lista_pontos[i] = 100;
	//show_message(global.lista_pontos[i])
	//}
}

function atualiza_Mapa(){
	//proxima_fase = room_goto_next()
	//if proxima_fase = 
}