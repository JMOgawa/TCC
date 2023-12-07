// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gerenciar_diamantes(diamantes_coletados){
	//show_message(diamantes_coletados)
	diamante_missao = 0;
	if (room = 1){
		diamante_missao = 1
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
		atualiza_maxPontos(i)
		atualiza_Mapa()
		//room_goto(Mapa)
		//if (room_get_name(room)= "Mapa"){
		//	show_message("p2")
		//	obj_player.x = 71
		//	obj_player.y = 72
		//	obj_fase2.sprite_index = spr_faseAberta
		//}
		room_goto_next()
	}
}

function atualiza_maxPontos(i){
	global.lista_pontos[i] = 100;
}

function atualiza_Mapa(){
	global.fase1_liberada = false
	global.fase2_liberada = false
	global.fase3_liberada = false
	global.fase4_liberada = false
	global.fase5_liberada = false
	global.fase6_liberada = false
	global.fase7_liberada = false

	if (room = 1){
		global.fase2_liberada = true
		global.fase1_liberada = true
	}else if (room = 2){
		global.fase3_liberada = true
	}else if (room = 3){
		global.fase4_liberada = true
	}else if (room = 4){
		global.fase5_liberada = true
	}else if (room = 5){
		global.fase6_liberada = true
	}else if (room = 6){
		global.fase7_liberada = true		
	}else if (room = 7){
		
	}
}

function get_pontos(){
	global.lista_pontos = array_create(7)
	if (global.fase1_liberada){
		global.lista_pontos[0] = 100
	}else if (global.fase2_liberada){
		global.lista_pontos[1] = 100
	}else if (global.fase3_liberada){
		global.lista_pontos[2] = 100
	}else if (global.fase4_liberada){
		global.lista_pontos[3] = 100
	}else if (global.fase5_liberada){
		global.lista_pontos[4] = 100
	}else if (global.fase6_liberada){
		global.lista_pontos[5] = 100
	}else if (global.fase7_liberada){
		global.lista_pontos[6] = 100
	}
}

function get_globais(){
	global.count_ = 0
	if count_ = 0{
		global.lista_pontos = array_create(7)
		global.fase1_liberada = false
		global.fase2_liberada = false
		global.fase3_liberada = false
		global.fase4_liberada = false
		global.fase5_liberada = false
		global.fase6_liberada = false
		global.fase7_liberada = false
		global.count_ = 1
	}else{
		
	}
}