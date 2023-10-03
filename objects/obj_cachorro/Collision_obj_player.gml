/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.racao){
	global.felicidade +=1;
	global.racao = false;
	
	audio_play_sound(snd_coracao, 10, false);
}

if (global.brinquedo){
	global.felicidade +=1;
	global.brinquedo = false;
	
	audio_play_sound(snd_coracao, 10, false);
}

if (global.agua){
	global.felicidade +=1;
	global.agua = false;
	
	audio_play_sound(snd_coracao, 10, false);
}


