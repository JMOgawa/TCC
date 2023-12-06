/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _mensagem = ""
var _mensagem2 = ""

switch (room_get_name(room)) {
	case "Fase1":
		_mensagem = "Colete os diamantes.\nNeste nível, você aprenderá a movimentação básica do seu player.";
		break;
	case "Fase2":
		_mensagem = "Escape do porco para pegar os diamantes e\nchegar do outro lado com segurança.\nPara andar uma longa distancia utilize os parametros.";
		break;
	case "Fase3":
		_mensagem = "Ataque 5 vezes o porco inimigo\nColete os diamantes."
		break;
	case "Fase4":
		_mensagem = "Colete todos os diamantes e a chave para abrir a porta.\nUtilise uma variavel para guardar a chave.\n\nDica: chave = getRecurso()"
		_mensagem2 = "\nUma VARIAVEL é armazena um valor \nou expressão em um programa de computador.\nb = 5\nNeste exemplo, 'b'  é o nome da variável, \n'5' é o valor armazenado na variável e \n'int' é o tipo de dado armazenado."
		break;
	case "Fase5":
		_mensagem = "Objetivo";
		break;
	case "Fase6":
		_mensagem = "Objetivo";
		break;
	case "Fase7":
		_mensagem = "Objetivo";
		break;
	default:
		_mensagem = "Objetivo";
		break;
}

//if(mostar_mensagem){
	draw_self();
	draw_set_font(Font_Consolas);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_white)
	draw_text(x+50, y+200, _mensagem + _mensagem2);
	draw_text(x+344, y+400, "OK");
//}

