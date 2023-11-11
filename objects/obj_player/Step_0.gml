/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//CONTROLANDO PLAYER
if comando_movimento = "up"
{
	y-=velocidade
}

if comando_movimento = "down"
{
	y+=velocidade
}

if comando_movimento = "left"
{
	x-=velocidade image_xscale=-1
}

if comando_movimento = "right"
{
	x+=velocidade image_xscale=1
}


if comando_movimento = "up" || comando_movimento = "down" || comando_movimento = "right" || comando_movimento = "left"
{
	//show_message(comando_movimento)
	sprite_index = spr_playerRun
}
else{
	sprite_index = spr_Player
}

if diamante = 4{
	show_message("DIAMNTES COLETADOS")
	//room_goto_next()
}


//if (comando_movimento != "") {
//    // Verifica colisões com as paredes
//    if (place_meeting(x + velocidade, y, obj_tile) && string_pos("player.right()", comando_movimento) > 0) {
//        // Impede o movimento para a direita
//    } else if (place_meeting(x - velocidade, y, obj_tile) && string_pos("player.left()", comando_movimento) > 0) {
//        // Impede o movimento para a esquerda
//    } else if (place_meeting(x, y + velocidade, obj_tile) && string_pos("player.down()", comando_movimento) > 0) {
//        // Impede o movimento para baixo
//    } else if (place_meeting(x, y - velocidade, obj_tile) && string_pos("player.up()", comando_movimento) > 0) {
//        // Impede o movimento para cima
//    } else {
//        // Move o jogador de acordo com o comando de movimento
//        if (string_pos("player.right()", comando_movimento) > 0) {
//            x += velocidade; // Mover para a direita
//        } else if (string_pos("player.left()", comando_movimento) > 0) {
//            x -= velocidade; // Mover para a esquerda
//        } else if (string_pos("player.down()", comando_movimento) > 0) {
//            y += velocidade; // Mover para baixo
//        } else if (string_pos("player.up()", comando_movimento) > 0) {
//            y -= velocidade; // Mover para cima
//        }
//    }

//    comando_movimento = ""; // Limpa a variável de comando de movimento após o jogador se mover
//}

//instance_destroy()
//room_restart()