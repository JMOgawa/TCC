 // Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function salvarUsuario(){
	var _array = []
	
	with(obj_diamond){
			var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			max_pontos: global.max_pontos,
			fase_atual: room
		}
		array_push(_array, _struct)
	}
	
	with(obj_player){
		var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index
		}
		array_push(_array, _struct)
	}
	
	var _string = json_stringify(_struct)
	var _file = file_text_open_write("save.txt");
	file_text_write_string(_file, _string);
	file_text_close(_file);
}

function carregarUsuario(){
	if(file_exists("save.txt")){
		var _file = file_text_open_read("save.txt")
		var _json =  file_text_read_string(_file)
		var _array = json_parse(_json)
		
		instance_destroy(obj_player)
		instance_destroy(obj_diamond)
		for(var i = 0; i < array_length(_array); i += 1){
			var _struct = _array[i];
			instance_create_layer(_struct.x, _struct.y, "Intances", asset_get_index(_struct.object), _struct)
		}
		//global.max_pontos = _struct.pontuacao_atual
		//obj_player.x = _struct.x
		//obj_player.y = _struct.y
		//obj_player.image_index = _struct.image_index
		//global.fase_atual = _struct.fase_atual
		
		file_text_close(_file)
	}
}