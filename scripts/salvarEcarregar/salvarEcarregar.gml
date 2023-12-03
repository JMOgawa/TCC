// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
global.game_data = 
{
	room_data: {}
};

function save_game()
{
	
	save_room();
	
	var _string = json_stringify( global.game_data);
	
	var _buffer = buffer_create( string_byte_length( _string) + 1, buffer_fixed, 1);

	buffer_write( _buffer, buffer_string, _string);

	buffer_save( _buffer, "save.txt");

	buffer_delete( _buffer);
	
}

function save_room()
{
	var _array = [];
	
	with( obj_diamond)
	{	
		var _struct = 
		{
			object: object_get_name( object_index),
			x: x,
			y: y,
			image_index: image_index
		};	
		array_push( _array, _struct);
	}
	
	with( obj_chaveAzul)
	{	
		var _struct = 
		{
			object: object_get_name( object_index),
			x: x,
			y: y,
			image_index: image_index
		};	
		array_push( _array, _struct);
	}
		
	
	with( obj_jogo)
	{	
		var _struct = 
		{
			object: object_get_name( object_index),
			x: x,
			y: y,
			image_index: image_index,
			lista_pontos: global.lista_pontos,
		};
		array_push( _array, _struct);
	}
	
	with( obj_player)
	{
		var _struct = 
		{
			object: object_get_name( object_index),
			x: x,
			y: y,
			image_index: image_index,
			diamante_missao: obj_player.diamante_missao,
			diamantes_coletados: obj_player.diamantes_coletados,
			comando_movimento: obj_player.comando_movimento,
			qnt_movimento: obj_player.qnt_movimento,
			velocidade: obj_player.velocidade,
			colidiu_diamante: obj_player.colidiu_diamante
		};		
		array_push( _array, _struct);
	}	
	struct_set( global.game_data.room_data, room_get_name( room), _array);
}

function load_game()
{

	if( file_exists( "save.txt")) 
	{
		var _buffer = buffer_load( "save.txt");
	
		var _json = buffer_read( _buffer, buffer_string);
	
		buffer_delete( _buffer);
		
		global.game_data = json_parse( _json);
		
		load_room();

	}

}

function load_room()
{
	
	var _array = struct_get( global.game_data.room_data, room_get_name( room));
	
	if( _array != undefined)
	{
		
		instance_destroy( obj_player);
		instance_destroy( obj_jogo);
		instance_destroy( obj_diamond);
		instance_destroy( obj_chaveAzul);
		
		for( var i = 0; i < array_length( _array); i += 1) 
		{
			var _struct = _array[i];
			instance_create_layer( _struct.x, _struct.y, layer, asset_get_index( _struct.object), _struct);
		}
	
	}

}