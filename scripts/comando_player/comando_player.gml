// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function comando_player(comando_movimento, velocidade, qnt_movimento, diamantes_coletados, diamante_aux){
	if comando_movimento = "left"{
		while(diamante_aux != qnt_movimento) {
			x-=velocidade image_xscale=-1
			colisao_diamante = instance_place(x, y, obj_diamond);
		    if (instance_exists(colisao_diamante)) {
				//show_message("aux - " + string(diamante_aux))
				diamantes_coletados += 1
				diamante_aux += 1
		        instance_destroy(colisao_diamante);
				gerenciar_diamantes(diamantes_coletados)
			}
		}
		diamante_aux = 0
		comando_movimento = ""
	}

	if comando_movimento = "right"{
		//show_message("aux - " + string(diamante_aux))
		//show_message("mov - " + string(qnt_movimento))
		while(diamante_aux != qnt_movimento) {
			x+=velocidade image_xscale=1
			colisao_diamante = instance_place(x, y, obj_diamond);
		    if (instance_exists(colisao_diamante)) {
				//show_message("aux - " + string(diamante_aux))
				diamantes_coletados += 1
				diamante_aux += 1
		        instance_destroy(colisao_diamante);	 
				gerenciar_diamantes(diamantes_coletados)
			}
		}
		diamante_aux = 0
		comando_movimento = ""
	}

	if comando_movimento = "up"{		
		while(diamante_aux != qnt_movimento) {
			y-=velocidade
			colisao_diamante = instance_place(x, y, obj_diamond);
		    if (instance_exists(colisao_diamante)) {
				//show_message("aux - " + string(diamante_aux))
				diamantes_coletados += 1
				diamante_aux += 1
		        instance_destroy(colisao_diamante);	      
				gerenciar_diamantes(diamantes_coletados)
			}
		}
		diamante_aux = 0
		comando_movimento = ""
	}

	if comando_movimento = "down"{
		while(diamante_aux != qnt_movimento) {
			y+=velocidade
			colisao_diamante = instance_place(x, y, obj_diamond);
		    if (instance_exists(colisao_diamante)) {
				diamantes_coletados += 1
				diamante_aux += 1
		        instance_destroy(colisao_diamante);	  
				gerenciar_diamantes(diamantes_coletados)
			}
		}
		diamante_aux = 0
		comando_movimento = ""
	}

	if comando_movimento = "attack"{
		while(Obj_pig.vida_total != 0) {
			x+=velocidade
			colisao_inimigo = instance_place(x, y, Obj_pig);
	        if (instance_exists(colisao_inimigo)) {		
				//show_message(Obj_pig.vida_total)
				velocidade = 0
				sprite_index = spr_Attack
				Obj_pig.vida_total -= 1
				if(Obj_pig.vida_total = 0){
					room_goto_next()
				}
	        }
		}
		comando_movimento = ""
	}

	//chave = getRecurso()
	if comando_movimento = "get_recurso"{
		while(obj_chaveAzul.count_chave != 1) {
			x+=velocidade
			colisao_chave = instance_place(x, y, obj_chaveAzul);
	        if (instance_exists(colisao_chave)) {
				obj_chaveAzul.count_chave = 1	  
	        }
		}
		instance_destroy(colisao_chave);
		comando_movimento = ""
	}

}

