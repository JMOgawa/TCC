/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

switch (nomeRoom) {
    case "Sobreojogo":
		room_goto(Home);
        break;
    case "Mapa":
		room_goto(Home);
        break;
    case "Pontuacao":
		room_goto(Home);
        break;
    case "Fase1":
		room_goto(Mapa);
		break;
    case "Fase2":
		room_goto(Mapa);
		break;
    case "Fase3":
		room_goto(Mapa);
		break;
    case "Fase4":
		room_goto(Mapa);
		break;
    case "Fase5":
		room_goto(Mapa);
		break;
    case "Fase6":
		room_goto(Mapa);
		break;
    case "Fase7":
		room_goto(Mapa);
		break;
    default:
		room_goto(Mapa);
        // código a ser executado se nenhum dos valores acima for igual a variavel
        break;
}

