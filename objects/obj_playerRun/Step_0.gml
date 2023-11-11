/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if ativar{
	x+=1
	sprite_index = spr_playerRun
}

if x = 500{
	sprite_index = spr_Player
	image_xscale=-1
	ativar = false
}

if ativar = false{
	x-=1
	sprite_index = spr_playerRun
}

if x = 50{
	sprite_index = spr_Player
	image_xscale=1
	ativar = true
}


