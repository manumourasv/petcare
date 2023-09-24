//programando uma State Machine
function scr_cachorro_escolher_estado(){
	prox_estado = choose(scr_cachorro_andando, scr_cachorro_parado, scr_cachorro_sentado);
	
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

function scr_cachorro_andando(){
	direcao = point_direction(x, y, dest_x, dest_y);
	
	hveloc = lengthdir_x(veloc, direcao);
	vveloc = lengthdir_y(veloc, direcao);
	
	x += hveloc;
	y += vveloc;
	
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
}

function scr_cachorro_parado(){
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
}

function scr_cachorro_sentado(){
	sprite_index = spr_cachorro_sentando;
	sprite_index = spr_cachorro_sentado;
	
	//inserir audio cachorro arfando
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
