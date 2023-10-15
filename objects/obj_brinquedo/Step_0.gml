/// @description Teste coletar tecla

if(distance_to_object(obj_player) <= 30){
	if(keyboard_check_pressed(ord("E"))){
		instance_destroy();

		global.brinquedo = true;

		audio_play_sound(snd_item_correto, 10, false);
	}
}








