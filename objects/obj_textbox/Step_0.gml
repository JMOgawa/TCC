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
	//show_message("SAIDA 1: " + codigo);	
	codigo = string_delete(codigo, 1, 5)
	//show_message("SAIDA 2: " + codigo);
	
	if string_length(codigo) = 6 {
		codigo = string_delete(codigo, 5, 2)
		//show_message("SAIDA 3: " + codigo);
	} else if string_length(codigo) = 4 {
		codigo = string_delete(codigo, 3, 2)
		//show_message("SAIDA 3: " + codigo);
	} else if string_length(codigo) = 7 {
		codigo = string_delete(codigo, 6, 2)
		//show_message("SAIDA 3: " + codigo);
	}
	obj_player.comando_movimento = string_lower(codigo)
    keyboard_string = "";
	codigo = "";
}
