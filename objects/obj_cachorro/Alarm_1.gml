/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(global.felicidade == 0){
	audio_play_sound(snd_cachorro_triste, 10, false);
}else{
	audio_play_sound(snd_cachorro_latindo, 10, false);
}

alarm[1] = irandom_range(4, 7) * 60;






