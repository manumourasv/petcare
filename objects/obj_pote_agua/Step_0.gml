/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(distance_to_object(obj_player) <= 30){
	if(keyboard_check_pressed(ord("E"))){
		instance_destroy();

		global.agua = true;

		audio_play_sound(snd_item_correto, 10, false);
	}
}






