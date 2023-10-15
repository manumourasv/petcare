//COLISAO
function scr_cachorro_colisao(){
	if place_meeting(x + hveloc, y, obj_colisao){
		while (!place_meeting(x + sign(hveloc), y, obj_colisao)){
			x += sign(hveloc);
		}	
	
		hveloc = 0;
	}
	
	x += hveloc;

	//colisão vertical
	if place_meeting(x, y + vveloc, obj_colisao){
		while !place_meeting(x, y + sign(vveloc), obj_colisao){
			y += sign(vveloc);
		}
	
		vveloc = 0;
	}
	
	y += vveloc;
}

//VERIFICA SE ESTA PROXIMO DO PERSONAGEM
function scr_cachorro_checar_personagem(){
	if distance_to_object(obj_player) <= dist_aggro{
		estado = scr_cachorro_seguindo;
	}
}


//ESCOLHE OS ESTADOS - State Machine
function scr_cachorro_escolher_estado(){
	scr_cachorro_checar_personagem();
	
	//prox_estado = choose(scr_cachorro_parado, scr_cachorro_sentado);
	//prox_estado = scr_cachorro_andando;
	
	//SORTEIO DE ESTADOS
	var _parado = choose(0,1);
	if(_parado == false){
		prox_estado = scr_cachorro_andando;
	}else{
		prox_estado = choose(scr_cachorro_parado, scr_cachorro_sentado);
	}
	
	
	//SELECIONA O ESTADO SORTEADO
	if prox_estado == scr_cachorro_andando{
		estado = scr_cachorro_andando;
		
		//movimentação e direção na sala
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
		
	}else if prox_estado == scr_cachorro_parado{
		estado = scr_cachorro_parado;
		
	}else if prox_estado == scr_cachorro_sentado{
		estado = scr_cachorro_sentado;
	}

}

//ANDANDO
function scr_cachorro_andando(){
	scr_cachorro_checar_personagem();
	
	//path_start(pth_path_cachorro, veloc, path_action_reverse,true);
	
	if distance_to_point(dest_x, dest_y) > veloc{
		var _dir = (point_direction(x, y, dest_x, dest_y));
		
		hveloc = lengthdir_x(veloc, _dir);
		vveloc = lengthdir_x(veloc, _dir);
	
		scr_cachorro_colisao();
		
	}else{
		x = dest_x;
		y = dest_y;
	}
		
	if(dest_x < x) {
		sprite_index = spr_cachorro_andando_esquerda;
	}else{
		sprite_index = spr_cachorro_andando_direita;
	}


}

//PARADO
function scr_cachorro_parado(){

	scr_cachorro_checar_personagem();
	
	if(dest_x < x) {
		sprite_index = spr_cachorro_parado_esquerda;
	}else{
		sprite_index = spr_cachorro_parado_direita;
	}
	
	
}

//SENTADO
function scr_cachorro_sentado(){
	scr_cachorro_checar_personagem();
	
	sprite_index = spr_cachorro_sentado;
		
	
}

//CACHORRO SEGUE
function scr_cachorro_seguindo(){
	dest_x = obj_player.x;
	dest_y = obj_player.y;
	
	var _dir = point_direction(x, y, dest_x, dest_y);
	hveloc = lengthdir_x(veloc, _dir);
	vveloc = lengthdir_y(veloc, _dir);
	
	scr_cachorro_colisao();
	
	
	if distance_to_object(obj_player) >= dist_desaggro{
		estado = scr_cachorro_escolher_estado;
		alarm[0] = irandom_range(120, 240);
	}
	
	if(dest_x < x) {
		sprite_index = spr_cachorro_andando_esquerda;
	}else{
		sprite_index = spr_cachorro_andando_direita;
	}
	
}

