//programando uma State Machine
/*
function scr_cachorro_colisao(){
	/*CODIGO DA COSMONAUT - NAO FUNCIONOU
	
	
	if(vveloc != 0){
		if place_meeting(x + hveloc, y, obj_colisao){
			while (!place_meeting(x + sign(hveloc), y, obj_colisao)){
				x += sign(hveloc);
			}	
	
		hveloc = 0;
		}
	}else if(hveloc != 0){
		if place_meeting(x, y + vveloc, obj_colisao){
			while !place_meeting(x, y + sign(vveloc), obj_colisao){
				y += sign(vveloc);
			}
	
		vveloc = 0;
		}
	
	}
	
}	
	
	
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

//funcao para quando o cachorro estiver proximo do personagem
function scr_cachorro_checar_personagem(){
	if distance_to_object(obj_player) <= dist_aggro{
		estado = scr_cachorro_seguindo;
	}
}

function scr_cachorro_escolher_estado(){
	scr_cachorro_checar_personagem();
	
	var parado = choose(0,1);
	if(parado == false){
		prox_estado = scr_cachorro_andando;
	}else{
		//prox_estado = choose(scr_cachorro_parado, scr_cachorro_sentado);
	}
	
	//prox_estado = choose(scr_cachorro_andando);
	
	
	if prox_estado == scr_cachorro_andando{
		estado = scr_cachorro_andando;
		
		
		
		/*randomize();
		
		//MISTURANDO DOCIGO DA COSMONAUT COM PONTO E VIRGULA
		dest_x = 0
		dest_y = 0
		
		var dir = choose(1,2,3,4);
		
		switch (dir){
			case 1: 
				dest_x = 90;
			break;
			case 2:
				dest_x = 180;
			break;
			case 3: 
				dest_y = 270;
			break;
			case 4: 
				dest_y = 359;
			break;
		};
	
	}else if prox_estado == scr_cachorro_parado{
		estado = scr_cachorro_parado;
		
	}else if prox_estado == scr_cachorro_sentado{
		estado = scr_cachorro_sentado;
	}

}


function scr_cachorro_andando(){
	scr_cachorro_checar_personagem();
	
	scr_cachorro_colisao();
	
	
	
	//MISTURANDO CODIGO DA COSMONAUT COM PONTO E VIRGULA
	
	/*if distance_to_point(dest_x, dest_y) > veloc{
			direcao = point_direction(x, y, dest_x, dest_y);
	
			hveloc = lengthdir_x(veloc, direcao);
			vveloc = lengthdir_y(veloc, direcao);
	
			scr_cachorro_colisao();
		}else{
			x = dest_x;
			y = dest_y;
		}
		
		if(dest_x < x) {
			sprite_index = spr_cachorro_andando_esquerda;
		}else{
			sprite_index = spr_cachorro_andando_direita;
		}*/
	
	// CODIGO DE MOVIMENTACAO DA COSMONAUT
	/*
		var dir = choose(1,2,3,4);
		
		switch (dir){
			case 1: 
				hveloc = -veloc; 
				sprite_index = spr_cachorro_andando_esquerda;
			break;
			case 2:
				hveloc = veloc; 
				sprite_index = spr_cachorro_andando_direita;
			break;
			case 3: 
				vveloc = -veloc; 
				sprite_index = spr_cachorro_andando_esquerda;
			break;
			case 4: 
				vveloc = veloc; 
				sprite_index = spr_cachorro_andando_direita;
			break;
		}*/
		
	
	//APLICANDO MOVIMENTAÇÃO
	//x += hveloc;
	//y += vveloc;
	
	
	/*if(hveloc < 0) {
		sprite_index = spr_cachorro_andando_esquerda;
	}else{
		sprite_index = spr_cachorro_andando_direita;
	}*/
	
		/* CODIGO COMENTADO PARA TENTAR CODIGO FRIENDLY COSMONAUT
		
		if distance_to_point(dest_x, dest_y) > veloc{
			direcao = point_direction(0, 0, dest_x, dest_y);
	
			hveloc = lengthdir_x(veloc, direcao);
			vveloc = lengthdir_y(veloc, direcao);
	
			scr_cachorro_colisao();
		}else{
			x = dest_x;
			y = dest_y;
		}
		
		if(dest_x < x) {
			sprite_index = spr_cachorro_andando_esquerda;
		}else{
			sprite_index = spr_cachorro_andando_direita;
		}*/
		
			/* ESSE CODIGO JÁ NAO ERA MAIS USADO
			if (hveloc != 0 or vveloc != 0) {
				if(dest_x < x) {
					sprite_index = spr_cachorro_andando_esquerda;
				}else{
					sprite_index = spr_cachorro_andando_direita;
				}
			}else{
				if(dest_x < x) {
					sprite_index = spr_cachorro_parado_esquerda;
				}else{
					sprite_index = spr_cachorro_parado_direita;
				}
			}
		}else{
			x = dest_x;
			y = dest_y;
		}
	}

}

function scr_cachorro_parado(){
	scr_cachorro_checar_personagem();
	
	//sprite_index = spr_cachorro_parado_esquerda;
	
	if(hveloc < x) {
		sprite_index = spr_cachorro_parado_esquerda;
	}else{
		sprite_index = spr_cachorro_parado_direita;
	}
	
	/*
	if(sentado == false){
		if(dest_x < x) {
			sprite_index = spr_cachorro_parado_esquerda;
		}else{
			sprite_index = spr_cachorro_parado_direita;
		}
	}
}

function scr_cachorro_sentado(){
	scr_cachorro_checar_personagem();
	
	sprite_index = spr_cachorro_sentado;
	
	/*if(sentado == true){
		sprite_index = spr_cachorro_sentando;
		sprite_index = spr_cachorro_sentado;
	
		//inserir audio cachorro arfando
	}else{
		scr_cachorro_andando();
	}
	
}

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
}



/*function scr_cachorro_andando(){
	//movimentação
	direita = keyboard_check(vk_right);
	cima = keyboard_check(vk_up);
	esquerda = keyboard_check(vk_left);
	baixo = keyboard_check(vk_down);


	//COLISÃO
	hveloc = (direita - esquerda) * veloc;

	//colisão horizontal
	if place_meeting(x + hveloc, y, obj_colisao){
		while !place_meeting(x + sign(hveloc), y, obj_colisao){
			x += sign(hveloc);
		}	
	
		hveloc = 0;
	}

	vveloc = (baixo - cima) * veloc;

	//colisão vertical
	if place_meeting(x, y + vveloc, obj_colisao){
		while !place_meeting(x, y + sign(vveloc), obj_colisao){
			y += sign(vveloc);
		}
	
		vveloc = 0;
	}


	//calculando a direção
	if (hveloc != 0 or vveloc != 0) {
		parado = false;
		
		direcao = point_direction(0, 0, hveloc, vveloc);
		moveX = lengthdir_x(veloc, direcao);
		moveY = lengthdir_y(veloc, direcao);
	
		x += moveX;
		y += moveY;
	
		//MUDAR SPRITES
	
		//mudando sprite p movimentação
		switch(direcao){
			case 0:
				sprite_index = spr_cachorro_andando_direita;
			break;
			case 90:
				sprite_index = spr_cachorro_andando_direita;
			break;
			case 180:
				sprite_index = spr_cachorro_andando_esquerda;
			break;
			case 270:
				sprite_index = spr_cachorro_andando_esquerda;
			break;
			default:
			break;
		}
	}else{		
		//mudando sprite p parado
		switch(direcao){
			case 0:
				sprite_index = spr_cachorro_parado_direita;
			break;
			case 90:
				sprite_index = spr_cachorro_parado_direita;
			break;
			case 180:
				sprite_index = spr_cachorro_parado_esquerda;
			break;
			case 270:
				sprite_index = spr_cachorro_parado_esquerda;
			break;
			default:
			break;
		}
		
		
		parado = true;
			
		if (parado == true){
			sentar -= 1;
			if(sentar <= 0) {
				estado = scr_cachorro_sentado;
				alarm[0] = 4*60;
			}
		}
		
	}
}

function scr_cachorro_sentado(){
	sprite_index = spr_cachorro_sentando;
	sprite_index = spr_cachorro_sentado;
	
	//inserir audio cachorro arfando
}*/
