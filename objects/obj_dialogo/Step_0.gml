/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(keyboard_check_pressed(ord("E"))){
	index ++;
	index_letra = 1;
	
	if(index >= array_length(texto)){
		global.inicio = false;
		instance_destroy(obj_dialogo);
		
		if (global.vitoria == true){
			room_restart();
		}
	}
}










