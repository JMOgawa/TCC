//190 =  .
//48  =  )
//57  =  (

if keyboard_check(vk_anykey) && !(keyboard_check(vk_shift) || keyboard_check(190)){
	codigo = keyboard_string
	//cont = 1
	//text += chr(key + 32)
}else{
	if keyboard_check_pressed(190) {
		codigo += "."
		keyboard_string = codigo
	}
	if keyboard_check(vk_shift) && keyboard_check_released(48) {
		codigo += ")"
		keyboard_string = codigo
	}
	if keyboard_check(vk_shift) && keyboard_check_released(57) {
		codigo += "("
		keyboard_string = codigo
	}
}

//king. - 5
//	right() - 7
//	left() - 6
//	up() - 4
//	down() - 6

if keyboard_check(vk_enter) {
	array_push(obj_saidaCodigo.saida_codigo, codigo);
	codigo = string_delete(codigo, 1, 5)
	pos_parentesis_aberto = string_pos("(", codigo);
	pos_parentesis_fechado = string_pos(")", codigo)
	if(room_get_name(room) = "Fase1"){
		if string_length(codigo) = 6 {
			codigo = string_delete(codigo, 5, 2)
		} else if string_length(codigo) = 4 {
			codigo = string_delete(codigo, 3, 2)
		} else if string_length(codigo) = 7 {
			codigo = string_delete(codigo, 6, 2)
		}
	}else if(room_get_name(room) != "Fase1"){ //Fase 2: king.right(3)
		if string_length(codigo) = 7 {
			//numero = string_delete(codigo, 1, 6)
			if (pos_parentesis_aberto > 0 && pos_parentesis_fechado > 0) {
				numero = string_copy(codigo, pos_parentesis_aberto + 1, 1);
			}			
			codigo = string_delete(codigo, 5, 3)
		} else if string_length(codigo) = 5 {
			if (pos_parentesis_aberto > 0 && pos_parentesis_fechado > 0) {
				numero = string_copy(codigo, pos_parentesis_aberto + 1, 1);
			}						
			codigo = string_delete(codigo, 3, 3)
		} else if string_length(codigo) = 8 {
			if (pos_parentesis_aberto > 0 && pos_parentesis_fechado > 0) {
				numero = string_copy(codigo, pos_parentesis_aberto + 1, 1);
			}
			codigo = string_delete(codigo, 6, 3)
		}
	}
	obj_player.comando_movimento = string_lower(codigo)
	if (numero != "") {
		obj_player.qnt_movimento = 1
	}else{
		obj_player.qnt_movimento = real(numero)
	}
    keyboard_string = "";
	codigo = "";
}
