/// @description Dialogo

//DIALOGO INICIO
if(global.inicio == true){
	var dialogo = instance_create_layer(0,0,"Dialogo", obj_dialogo);

	for (var i = 0; i < array_length(texto_inicio); i++) {
		array_push(dialogo.texto, texto_inicio[i]);
	}
}

//DIALOGO VITORIA
if(global.felicidade >= 3){
	var dialogo = instance_create_layer(0,0,"Dialogo", obj_dialogo);

	for (var i = 0; i < array_length(texto_vitoria); i++) {
		array_push(dialogo.texto, texto_vitoria[i]);
	}
	
	global.vitoria = true;
}






