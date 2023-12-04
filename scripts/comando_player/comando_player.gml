// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function comando_player(comando_movimento, velocidade, qnt_movimento, diamantes_coletados){
	colidiu_diamante = false	
	if comando_movimento = "left"{
		while(!colidiu_diamante) {
			x-=velocidade image_xscale=-1
			if(place_meeting(x, y, obj_diamond)){
				if(qnt_movimento > 1){
				//show_message(qnt_movimento)
				//show_message(diamantes_coletados)
				colidiu_diamante = false
				}else{
					colidiu_diamante = true;
				}
			}
			if(place_meeting(x, y, obj_parede)){
				colidiu_diamante = true;
				sprite_index = spr_hit;
			}
		}
	}

	if comando_movimento = "right"{
		while(!colidiu_diamante) {
			x+=velocidade image_xscale=1
			//sprite_index = spr_playerRun
			if(place_meeting(x, y, obj_diamond)){			
				if(qnt_movimento > 1){
					//show_message(qnt_movimento)
					//show_message(diamantes_coletados)
					colidiu_diamante = false
				}else{
					colidiu_diamante = true;
					sprite_index = spr_Player;
				}
			}	
			if(place_meeting(x, y, obj_parede)){
				colidiu_diamante = true;
				sprite_index = spr_hit;	
			}
		}
	}

	if comando_movimento = "up"{
		while(!colidiu_diamante) {
			y-=velocidade
			sprite_index = spr_playerRun
			if(place_meeting(x, y, obj_diamond)){			
				if(qnt_movimento > 1){
					colidiu_diamante = false
				}else{
					colidiu_diamante = true;
					sprite_index = spr_Player;
				}
			}	
			if(place_meeting(x, y, obj_parede)){
				colidiu_diamante = true;
				sprite_index = spr_hit;	
			}	
		}
	}

	if comando_movimento = "down"{
		while(!colidiu_diamante) {
			y+=velocidade
			if(place_meeting(x, y, obj_diamond)){			
				if(qnt_movimento > 1){
					//show_message(qnt_movimento)
					//show_message(diamantes_coletados)
					colidiu_diamante = false
				}else{
					colidiu_diamante = true;
					sprite_index = spr_Player;
				}
			}		
			if(place_meeting(x, y, obj_parede)){
				colidiu_diamante = true;
				sprite_index = spr_hit;	
			}
		}
	}

	if comando_movimento = "up" || comando_movimento = "down" || comando_movimento = "right" || comando_movimento = "left"
	{
		//show_message(comando_movimento)
		//sprite_index = spr_playerRun
		//image_speed = velocidade/2
	}
	else{
		sprite_index = spr_Player
	}
}

